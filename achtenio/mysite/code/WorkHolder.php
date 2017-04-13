<?php

	class WorkHolder extends Page{
		private static $allowed_children = array('WorkPage');

		private static $has_many = array(
			'Categories' => 'WorkCategory',
			'Software' => 'WorkSoftware'
		);

		public function getCMSFields(){
			$fields = parent::getCMSFields();
			$fields->addFieldToTab('Root.Categories', GridField::create(
				'Categories',
				'Project categories',
				$this->Categories(),
				GridFieldConfig_RecordEditor::create()
			));
			$fields->addFieldToTab('Root.Software', GridField::create(
				'Software',
				'Project software',
				$this->Software(),
				GridFieldConfig_RecordEditor::create()
			));

			return $fields;
		}
	}

	class WorkHolder_Controller extends Page_Controller{
		
		public function WorkSearchForm(){

			$pages = WorkPage::get();
			$dates = array();
			$clients = array();

			if($pages->exists()){
				foreach ($pages as $page) {
					$date = strtotime($page->Date);
					$date = date('Y', $date);
					if(!in_array($date, $dates)){
						array_push($dates, $date);
						echo($date);
					}
					$client = $page->Client;
					if(!in_array($client, $clients)){
						array_push($clients, $client);
						echo($client);
					}
				}
			}


			$form = Form::create(
				$this,
				'WorkSearchForm',
				FieldList::create(
					DropdownField::create('Date')
						->setSource($dates)
						->addExtraClass('filter-input'),
					DropdownField::create('Client')
						->setSource($clients)
						->addExtraClass('filter-input')
				),
				FieldList::create(
					FormAction::create('doWorkFilter', 'Filter')
					->addExtraClass('submit-filter-button')
				)
			);

			$form->setFormMethod('GET')
				->setFormAction($this->Link());

			return $form;
		}
	}

?>