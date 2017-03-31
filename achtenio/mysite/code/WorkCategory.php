<?php
	
	class WorkCategory extends DataObject{

		private static $db = array(
			'Title' => 'Varchar'
		);

		private static $has_one = array(
			'WorkHolder' => 'WorkHolder'
		);

		private static $belongs_many_many = array(
			'WorkPages' => 'WorkPage'
		);

		public function getCMSFields(){
			return FieldList::create(
				TextField::create('Title')
			);
		}
	}
?>