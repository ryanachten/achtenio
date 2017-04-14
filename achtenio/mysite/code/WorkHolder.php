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
		
		public function init() {
		parent::init();
			Requirements::css($this->ThemeDir()."/css/work.css");
		}

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
					}
					$client = $page->Client;
					if(!in_array($client, $clients)){
						array_push($clients, $client);
					}
				}
			}
			$pageCategories = array();
			$workCategories = WorkCategory::get();
			foreach ($workCategories as $cat) {
				array_push($pageCategories, $cat->Title);
			}
			$pageSoftware = array();
			$workSoftware = WorkSoftware::get();
			foreach ($workSoftware as $soft) {
				array_push($pageSoftware, $soft->Title);
			}


			$form = Form::create(
				$this,
				'WorkSearchForm',
				FieldList::create(
					DropdownField::create('Date')
						->setEmptyString('-- select date --')
						->setSource($dates)
						->addExtraClass('filter-input'),
					DropdownField::create('Client')
						->setEmptyString('-- select client --')
						->setSource($clients)
						->addExtraClass('filter-input'),
					DropdownField::create('Categories')
						->setEmptyString('-- select category --')
						->setSource($pageCategories)
						->addExtraClass('filter-input'),
					DropdownField::create('Software')
						->setEmptyString('-- select software --')
						->setSource($pageSoftware)
						->addExtraClass('filter-input')
				),
				FieldList::create(
					FormAction::create('doWorkFilter', ' ')
					->addExtraClass('submit-filter-button')
					->setAttribute('style','background-image: url('.$this->ThemeDir().'/img/achtenio_filtericon.svg)')
				)
			);

			$form->setFormMethod('GET')
				->setFormAction($this->Link());

			return $form;
		}
	}

?>