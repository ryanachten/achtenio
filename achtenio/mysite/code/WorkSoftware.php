<?php
 	class WorkSoftware extends DataObject{

 		private static $db = array(
 			'Title' => 'Varchar'
 		);

 		private static $has_one = array(
 			'WorkHolder' => 'WorkHolder'
 		);

 		private static $belongs_many_many = array(
			'Software' => 'WorkSoftware'
		);

 		public function getCMSFields(){
 			return FieldList::create(
 				TextField::create('Title')
 			);
 		}
 	}
?>