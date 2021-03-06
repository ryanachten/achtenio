<?php

	class WorkPage extends Page{
		private static $can_be_root = false;

		private static $db = array(
			'Subtitle' => 'Varchar',
			'Date' => 'Date',
			'Teaser' => 'Text',
			'Client' => 'Varchar',
			'Behance' => 'Varchar' //not sure if should be text of varchar (limit in tut is 100 vs doc 255)
		);

		private static $has_one = array(
			'HeaderImage' => 'Image'
		);

		private static $has_many = array(
			'WorkSections' => 'WorkSection'
		);

		private static $many_many = array(
			'Categories' => 'WorkCategory',
			'Software' => 'WorkSoftware'
		);

		public function CategoriesList(){
			if($this->Categories()->exists()){
				return implode(', ', $this->Categories()->column('Title'));
			}
		}

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

			// Has_many fields
			$fields->addFieldToTab('Root.WorkSections', GridField::create(
				'WorkSections',
				'Project Sections',
				$this->WorkSections(),
				GridFieldConfig_RecordEditor::create()
			));

			// Many_many fields
			$fields->addFieldToTab('Root.Categories', CheckboxSetField::create(
				'Categories',
				'Selected categories',
				$this->Parent()->Categories()->map('ID','Title')
			));
			$fields->addFieldToTab('Root.Software', CheckboxSetField::create(
				'Software',
				'Software used in project',
				$this->Parent()->Software()->map('ID','Title')
			));

			return $fields;
		}
	}

	class WorkPage_Controller extends Page_Controller{
		
		public function init(){
			parent::init();
			Requirements::css($this->ThemeDir()."/css/project.css");
		}
	}

?>