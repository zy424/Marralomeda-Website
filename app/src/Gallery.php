<?php
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\CheckboxField;

class Gallery extends DataObject
{

    private static $db = [
        'Description' => 'Varchar',
        'IsActive' => 'Boolean'
    ];

    private static $summary_fields = [
        'Description',
        'IsActive'
    ];

    private static $has_one = [
        'Photo' => Image::class
    ];
    private static $owns = [
        'Photo',
    ];


    public function getCMSFields() {

        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Description'));
        $fields->addFieldToTab('Root.Main', CheckboxField::create('IsActive','Is active?'));
        $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));

        $photo->setFolderName('gallery-photos');
        return $fields;
    }
}