<?php
use SilverStripe\ORM\DataObject;

class ContactUsMessage extends DataObject
{

    private static $db = [
        'Name' => 'Varchar',
        'Email' => 'Varchar',
        'Phone' => 'Varchar',
        'Message' => 'Text'
    ];

    private static $summary_fields = [
        'Name',
        'Email',
        'Phone'
    ];
}