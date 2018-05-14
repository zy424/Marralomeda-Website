	<!-- BEGIN PAGE TITLE/BREADCRUMB -->
		<div class="parallax pattern-bg" data-stellar-background-ratio="0.1" style="background-image: url(images/banner.jpg)">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h1 class="page-title">$Title</h1>
						
						<div class="breadcrumb">
							<a href=home>Home </a> &raquo;
							<a href="#">Blog</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE TITLE/BREADCRUMB -->
<!-- BEGIN CONTENT WRAPPER -->
<div class="content">
	<div class="container">
		<div class="row">
		
			<!-- BEGIN MAIN CONTENT -->
			<div class="main col-sm-8">
				<div id="blog-listing" class="list-style clearfix">
					<div class="row">
						 <% if $SelectedCategory %>
								<h3>Category: $SelectedCategory.Title</h3>
								<br><br>
						 <% else_if $StartDate %>
                			<h3>Showing $StartDate.Date to $EndDate.Date</h3>
							<br><br>
						 <% end_if %>
					   <% loop $PaginatedArticles %>
					    <div class="item col-md-6">
					        <div class="image">
								<a href="$Link"> 
								<span class="btn btn-default">Read More</span>
								</a>
								$Photo.Fit(700,500)					        
					        </div> 
						    <div class="tag"><i class="fa fa-file-text"></i></div>
								<div class="info-blog">
									<ul class="top-info">
										<li><i class="fa fa-calendar"></i> $Date.Nice</li>
										<li><i class="fa fa-comments-o"></i> 2</li>
										<li><i class="fa fa-tags"></i> $CategoriesList</li>
									</ul>
									<h3>
										<a href="$Link">$Title</a>
									</h3>
									<% if $Teaser %>
										<p>$Teaser</p>
									<% else %>
										<p>$Content.FirstSentence</p>
									<% end_if %>
								</div>
					        </div>
					    <% end_loop %>
              <!-- BEGIN PAGINATION -->
						<% if $PaginatedArticles.MoreThanOnePage %>
                			<div class="pagination">
								<% if $PaginatedArticles.NotFirstPage %>
                       				<ul id="previous col-xs-6">
                            			<li><a href="$PaginatedArticles.PrevLink"><i class="fa fa-chevron-left"></i></a></li>
                        			</ul>
								<% end_if %>
                    		<ul class="hidden-xs">
								<% loop $PaginatedArticles.PaginationSummary %>
									<% if $Link %>
                            		<li <% if $CurrentBool %>class="active"<% end_if %>>
                                		<a href="$Link">$PageNum</a>
                           			</li>
									<% else %>
                            			<li>...</li>
									<% end_if %>
								<% end_loop %>
                    		</ul>
							<% if $PaginatedArticles.NotLastPage %>
								<ul id="next col-xs-6">
									<li><a href="$PaginatedArticles.NextLink"><i class="fa fa-chevron-right"></i></a></li>
								</ul>
							<% end_if %>
               				</div>
						<% end_if %>
              <!-- END PAGINATION -->
					</div>	
				</div>
			</div>
			<!-- END MAIN CONTENT -->	
			
			
			<!-- BEGIN SIDEBAR -->
			<div class="sidebar blog-side col-sm-4">

				<!-- BEGIN CATEGOTY -->
				<h2 class="section-title">Categories</h2>
				<ul class="categories">
				<% loop $Categories %>
					<li><a href="$Link">$Title <span>($Articles.count)</span></a></li>
				<% end_loop %>
				</ul>
				<!-- END CATEGOTY -->

				 <!-- BEGIN ARCHIVES ACCORDION -->
					<h2 class="section-title">Archives</h2>
					<div id="accordion" class="panel-group blog-accordion">
						<div class="panel">

							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul>
										<% loop $ArchiveDates %>
											<li><a href="$Link">$MonthName $Year ($ArticleCount)</a></li>
										<% end_loop %>
									</ul>
								</div>
							</div>
						</div>
					</div>
			 <!-- END ARCHIVES ACCORDION -->	
				
				<!-- BEGIN LATEST NEWS -->
				<div class="col-sm-12">
					<h2 class="section-title">Latest Articles</h2>
					<ul class="latest-news">
					<% loop $LatestArticles(3) %>
					<li class="col-md-12">
						<div class="image">
							<a href=$Link></a>
							$Photo.Fit(100,100)
						</div>
						
						<ul class="top-info">
							<li><i class="fa fa-calendar"></i>$Date</li>
						</ul>
							
						<h4>$Title</h4>
						<p>$CategoriesList</p>
					</li>	
					<% end_loop %>
					</ul>	
				</div>
				<!-- END LATEST NEWS -->
			</div>
	

		</div>
	</div>
</div>
