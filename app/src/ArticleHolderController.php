<?php
use PageController;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\ORM\FieldType\DBField;

class ArticleHolderController extends PageController
{
    private static $allowed_actions = [
        'category',
        'date'
        
    ];
    protected $articleList;

    protected function init ()
    {
        parent::init();

        $this->articleList = ArticlePage::get()->filter([
            'ParentID' => $this->ID
        ])->sort('Date DESC');
    }

    //LATEST ARTICLES
    public function LatestArticles($count = 3) 
    {
        return ArticlePage::get()
            ->sort('Created', 'DESC')
            ->limit($count);
    }
    //CATEGARY FILTER
    public function category (HTTPRequest $r)
    {
        $category = ArticleCategory::get()->byID(
            $r->param('ID')
        );

        if(!$category) {
            return $this->httpError(404,'That category was not found');
        }

        $this->articleList = ArticlePage::get()->filter([
            'ParentID' => $this->ID,
            'Categories.ID' => $category->ID
        ])->sort('Date DESC');

        return [
            'SelectedCategory' => $category
        ];
    }

    //PAGINATION
    public function PaginatedArticles ($num = 3)
    {       
        return PaginatedList::create(
            $this->articleList,
            $this->getRequest()
        )->setPageLength($num);
    }

    //Date filter
    public function date(HTTPRequest $r)
    {
        $year = $r->param('ID');
        $month = $r->param('OtherID');

        if (!$year) return $this->httpError(404);

        $startDate = $month ? "{$year}-{$month}-01" : "{$year}-01-01";

        if (strtotime($startDate) === false) {
            return $this->httpError(404, 'Invalid date');
        }

        $adder = $month ? '+1 month' : '+1 year';

        $endDate = date('Y-m-d', strtotime(
            $adder, 
                strtotime($startDate)
        ));

        $this->articleList = $this->articleList->filter([
            'Date:GreaterThanOrEqual' => $startDate,
            'Date:LessThan' => $endDate 
        ]);

        return [
            'StartDate' => DBField::create_field('Datetime', $startDate),
            'EndDate' => DBField::create_field('Datetime', $endDate)
        ];

    }



}