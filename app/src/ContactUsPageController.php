<?php
    use SilverStripe\Forms\Form;
    use SilverStripe\Forms\FieldList;
    use SilverStripe\Forms\TextField;
    use SilverStripe\Forms\EmailField;
    use SilverStripe\Forms\TextareaField;
    use SilverStripe\Forms\PhoneNumberField;
    use SilverStripe\Forms\FormAction;
    use SilverStripe\Forms\RequiredFields;
    use Mailgun\Mailgun;

    class ContactUsPageController extends \PageController
    {
        private static $allowed_actions = [
            'ContactForm',
        ];
    
        public function ContactForm()
        {
            
            $form = Form::create(
                $this,
                __FUNCTION__,
                FieldList::create(
                    TextField::create('Name',''),
                    EmailField::create('Email',''),
                    TextField::create('Phone',''),
                    TextareaField::create('Message','')
                ),
                FieldList::create(
                    FormAction::create('handleMessage','Send Message')
                        ->setUseButtonTag(true)
                        ->addExtraClass('btn btn-primary btn-lg')
                ),
                RequiredFields::create('Name','Email','Comment')
            );
        
            foreach($form->Fields() as $field) {
                if ($field->getName() == "Phone") {
                    $field->setAttribute('placeholder', $field->getName());    
                } else {
                    $field->setAttribute('placeholder', $field->getName().'*');    
                }        
            }
          
    
            $data = $this->getRequest()->getSession()->get("FormData.{$form->getName()}.data");
    
            return $data ? $form->loadDataFrom($data) : $form;
        
        }
    
        

        public function handleMessage($data, $form)
        {
            // $comment = ArticleComment::create();
            // $comment->Name = $data['Name'];
            // $comment->Email = $data['Email'];
            // $comment->Comment = $data['Comment'];
            // $comment->ArticlePageID = $this->ID;
            // $comment->write();

            $session = $this->getRequest()->getSession();
            $session->set("FormData.{$form->getName()}.data", $data);


            $message = ContactUsMessage::create();
            $form->saveInto($message);
            $message->write();
            $session->clear("FormData.{$form->getName()}.data");

            # First, instantiate the SDK with your API credentials
            $mg = Mailgun::create('key');
            $domain = "domain";

            # Now, compose and send your message.
            # $mg->messages()->send($domain, $params);
            $mg->messages()->send($domain, [
                'from'    => "Customer <$message->Email>",
                'to'      => "test@gmail.com",
                'subject' => "Contact from $message->Name",
                'text'    => "Customer phone: $message->Phone\n\n$message->Message"
            ]);

            $form->sessionMessage('Thanks for your message','good');

            return $this->redirectBack();
        }
    }
