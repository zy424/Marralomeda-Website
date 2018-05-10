<?php

use PageController;    

class HomePageController extends PageController 
{
    
    public function LatestArticles($count = 3) 
    {
      return ArticlePage::get()
            ->sort('Created', 'DESC')
            ->limit($count);
    }

    public function PopularActivities($count = 6) 
    {
      return ActivityPage::get()
            ->sort('Created', 'DESC')
            ->limit($count);
    }

    
   
}