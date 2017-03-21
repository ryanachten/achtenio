<?php
	class HomePage extends SiteTree{

	}

	class HomePage_Controller extends ContentController{

		public function init() {
			parent::init();
			// You can include any CSS or JS required by your project here.
			// See: http://doc.silverstripe.org/framework/en/reference/requirements
			Requirements::css("https://fonts.googleapis.com/css?family=Kumar+One|Libre+Baskerville|Roboto");
			Requirements::css("https://necolas.github.io/normalize.css/5.0.0/normalize.css");
			Requirements::css($this->ThemeDir()."/css/main.css");
			Requirements::javascript("https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js");
		}
	}
?>