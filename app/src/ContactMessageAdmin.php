<?php
use SilverStripe\Admin\ModelAdmin;

class ContactMessageAdmin extends ModelAdmin 
{

    private static $managed_models = [
        'ContactUsMessage',
    ];

    private static $url_segment = 'contact-us-messages';

    private static $menu_title = 'Messages';

    public function getExportFields() 
    {
        return [
            'Name' => 'Name',
            'Email' => 'Email',
            'Phone' => 'Phone',
            'Message' => 'Message'
        ];
    }
}