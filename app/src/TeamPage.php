<?php

use Page;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
    

class TeamPage extends Page 
{
    private static $can_be_root = false;
    private static $db = [
        'Name' => 'Varchar',
        'JobTitle' => 'Varchar',
        'Teaser' => 'Text',
    ];

    private static $has_one = [
        'Photo' => Image::class,
    ];

    private static $owns = [
        'Photo',
    ];


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Name','Name'), 'Content');
        $fields->addFieldToTab('Root.Main', TextField::create('JobTitle','Job Title'),'Content');
        $fields->addFieldToTab('Root.Main', TextareaField::create('Teaser')
           ->setDescription('This is the summary of the job the person does'),'Content');
         
        $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));
            
        $photo->setFolderName('team-photos');

      
        return $fields;
    }     

}