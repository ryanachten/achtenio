<?php

	class WorkHolder extends Page{
		private static $allowed_children = array('WorkPage');

		private static $has_many = array(
			'Categories' => 'WorkCategory'
		);

		public function getCMSFields(){
			$fields = parent::getCMSFields();
			$fields->addFieldToTab('Root.Categories', GridField::create(
				'Categories',
				'Project categories',
				$this->Categories(),
				GridFieldConfig_RecordEditor::create()
			));

			return $fields;
		}
	}

	class WorkHolder_Controller extends Page_Controller{
		
	}

?>