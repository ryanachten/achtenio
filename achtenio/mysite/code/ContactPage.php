<?php
	class ContactPage extends Page{

	}

	class ContactPage_Controller extends Page_Controller{

		public function init(){
			parent::init();
			Requirements::css($this->ThemeDir()."/css/contact.css");
		}
	}
?>