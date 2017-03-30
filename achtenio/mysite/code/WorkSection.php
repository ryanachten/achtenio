<?php
	class WorkSection extends DataObject{

		private static $db = array(
			'Title' => 'Varchar',
			'Description' => 'Text',
			'Video' => 'Varchar'
		);

		private static $has_one = array(
			'Photo' => 'Image',
			'WorkPage' => 'WorkPage'
		);

		private static $summary_fields = array(
			'GridThumbnail' => '',
			'Title' => 'Title',
			'Description' => 'Description'
		);

		public function getGridThumbnail(){
			if($this->Photo()->exists()){
				return $this->Photo()->SetWidth(100);
			}

			return '(no image)';
		}

		public function getCMSFields(){
			$fields = FieldList::create(
				TextField::create('Title'),
				TextareaField::create('Description'),
				TextField::create('Video', 'Vimeo Video ID'),
				$uploader = UploadField::create('Photo')
			);

			$uploader->setFolderName('project-content/project-photos');
			$uploader->getValidator()->setAllowedExtensions(array(
				'png','gif','jpeg','jpg'));

			return $fields;
		}

	}


?>