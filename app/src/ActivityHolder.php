<?php
    use Page;
    use SilverStripe\Forms\GridField\GridField;
    use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

    class ActivityHolder extends Page
    {
        private static $allowed_children = [
            ActivityPage::class
        ];

    }

   