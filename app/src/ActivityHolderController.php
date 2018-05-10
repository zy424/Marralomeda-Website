<?php
    use PageController;
    use SilverStripe\ORM\DataObject;

    class ActivityHolderController extends PageController
    {
        public function GalleryImages()
        {
            return DataObject::get('Gallery','IsActive=1',$sort="Created asc");
        }

       
    }