<?php
	class ContactPage extends Page{

	}

	class ContactPage_Controller extends Page_Controller{

		public function init(){
			parent::init();
			Requirements::css($this->ThemeDir()."/css/contact.css");
		}

/*
References:
https://www.silverstripe.org/learn/lessons/introduction-to-frontend-forms?ref=hub
https://docs.silverstripe.org/en/3/developer_guides/forms/how_tos/simple_contact_form/
*/

		private static $allowed_actions = array('ContactForm');

		public function ContactForm() {
			$form = Form::create(
				$this,
				__FUNCTION__,
				FieldList::create(
					TextField::create('Name','')
						->setAttribute('placeholder','Name*')
						->addExtraClass('form-field'),
					EmailField::create('Email','')
						->setAttribute('placeholder','Email*')
						->addExtraClass('form-field'),
					TextareaField::create('Message','')
						->setAttribute('placeholder','Message*')
						->addExtraClass('form-field')
				),
				FieldList::create(
					FormAction::create('submit', 'Send Message') //submit needs to be the name of the pub function later
						->setUseButtonTag(true)
						->addExtraClass('text-button')
				),
				RequiredFields::create('Name','Email','Message')			
			);

			$form->addExtraClass('contact-form');

			return $form;
		}


		public function submit($data, $form){
			$email = new Email();

			$email->setTo('ryanachten@gmail.com'); //prob should to change this to a site email address
			$email->setFrom($data['Email']);
			$email->setSubject("Contact Message from {$data["Name"]}");

			$messageBody = "
				<p><strong>Name:</strong> {$data['Name']}</p>
				<p><strong>Message:</strong> {$data['Message']}</p>
			";
			$email->setBody($messageBody);
			$email->send();

			$form->sessionMessage("Thanks for your message, I'll get back to you as soon as I can",'good');

			return $this->redirectBack();
		}
	}
?>