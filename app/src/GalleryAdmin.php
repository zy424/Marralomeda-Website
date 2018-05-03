<?php
use SilverStripe\Admin\ModelAdmin;

class GalleryAdmin extends ModelAdmin 
{

    private static $managed_models = [
        'Gallery',
    ];

    private static $url_segment = 'gallery';

    private static $menu_title = 'Gallery Images';

}