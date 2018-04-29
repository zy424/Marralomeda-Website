<?php
    use Page;
    use SilverStripe\Forms\GridField\GridField;
    use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

    class TeamHolder extends Page
    {
        private static $allowed_children = [
            TeamPage::class
        ];

        

    }
