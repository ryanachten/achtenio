<?php

	class WorkPage extends Page{
		private static $can_be_root = false;

		private static $db = array(
			'Subtitle' => 'Varchar',
			'Date' => 'Date',
			'Teaser' => 'Text',
			'Client' => 'Varchar',
			'Behance' => 'Varchar' //not sure if should be text of varchar (limit in tut is 100 vs doc 255)
			// Software section - not sure how to do
		);

		private static $has_one = array(
			'HeaderImage' => 'Image'

		);
		

		public function getCMSFields(){
			$fields = parent::getCMSFields();
			$fields->addFieldToTab('Root.Main', TextField::create('Subtitle'), 'Content');
			$fields->addFieldToTab('Root.Main', DateField::create('Date', 'Date of project')
				->setConfig('showcalendar', true)
			 ,'Content');
			$fields->addFieldToTab('Root.Main', TextareaField::create('Teaser'), 'Content');
			$fields->addFieldToTab('Root.Main', TextField::create('Client', 'Project client'), 'Content');
			$fields->addFieldToTab('Root.Main', TextField::create('Behance', 'Link to Behance project'), 'Content');

			$fields->addFieldToTab('Root.Attachments', $headerImage = UploadField::create('HeaderImage'));
				$headerImage->setFolderName('project-content/header-images');

			return $fields;
		}
	}

	class WorkPage_Controller extends Page_Controller{
		
	}

?>