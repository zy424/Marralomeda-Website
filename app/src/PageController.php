<?php

use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\View\Requirements;

class PageController extends ContentController
{
    private static $allowed_actions = [];

    protected function init()
    {
        parent::init();
        Requirements::css('css/bootstrap.min.css');
        Requirements::css('css/style.css');
        Requirements::css('css/override.css');
        Requirements::css('css/aos.css');
        Requirements::javascript('js/common/modernizr.js');
        Requirements::javascript('js/common/jquery-1.11.1.min.js');
        Requirements::javascript('js/common/bootstrap.min.js');
        Requirements::javascript('js/common/bootstrap-datepicker.js');
        Requirements::javascript('js/common/chosen.min.js');
        Requirements::javascript('js/common/bootstrap-checkbox.js');
        Requirements::javascript('js/common/nice-scroll.js');
        Requirements::javascript('js/common/jquery-browser.js');
        Requirements::javascript('js/scripts.js');
        Requirements::javascript('js/aos.js');
    }
}
