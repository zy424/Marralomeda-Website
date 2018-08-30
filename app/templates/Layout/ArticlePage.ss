
<% include Banner %>
<!-- BEGIN CONTENT WRAPPER -->
<div class="content">
	<div class="container">
		<div class="row">
		
			<!-- BEGIN MAIN CONTENT -->
			<div class="main col-sm-8">
			
				<h1 class="blog-title">$Title</h1>
				
				<div class="blog-main-image">
					<% with $Photo.ScaleWidth(750) %>
                    <img class="my-custom-class" src="$URL" alt="" width="$Width" height="$Height" />
                    <% end_with %>
                    
					<div class="tag"><i class="fa fa-file-text"></i></div>
				</div>
				
				<div class="blog-bottom-info">
					<ul>
					
						<li><i class="fa fa-calendar"></i> $Date</li>
						<li><i class="fa fa-comments-o"></i> 3 Comments</li>
						<li><i class="fa fa-tags"></i> $CategoriesList</li>
					</ul>
					
					<div id="post-author"><i class="fa fa-pencil"></i> By $Author</div>
				</div>
				
				<div class="post-content">
                    $Content
                </div>
				
				<div class="share-wraper col-sm-12 clearfix">
                    <% if $Document %>
                    <div class="row">
                    <% with $Document %>
                    <div class="col-sm-12">
                    <a href="$URL" class="btn btn-warning btn-block"><i class="fa fa-download"></i> Download document [$Extension] ($Size)</a>                  
                    </div>
                    <% end_with %>
                    </div>
                    <% end_if %>
					<h5>Share this Post:</h5>
					<ul class="social-networks">
						<li><a target="_blank" href="http://www.facebook.com/sharer.php?s=100&amp;p%5Burl%5D=http%3A%2F%2Fwww.wiselythemes.com%2Fhtml%2Fcozy%2Fblog-detail.html%3Ffb%3Dtrue&amp;p%5Bimages%5D%5B0%5D=http%3A%2F%2Fwww.wiselythemes.com%2Fhtml%2Fcozy%2Fimages%2Fnews-img1.jpg&amp;p%5Btitle%5D=Cozy%20Blog%20Post"><i class="fa fa-facebook"></i></a></li>
						<li><a target="_blank" href="https://twitter.com/intent/tweet?url=http://www.wiselythemes.com/html/cozy/blog-detail.html&amp;text=Cozy%20Blog%20Post"><i class="fa fa-twitter"></i></a></li>
						<li><a target="_blank" href="https://plus.google.com/share?url=http://www.wiselythemes.com/html/cozy/blog-detail.html"><i class="fa fa-google"></i></a></li>
						<li><a target="_blank" href="http://pinterest.com/pin/create/button/?url=http://www.wiselythemes.com/html/cozy/blog-detail.html&amp;description=Cozy%20Blog%20Post&amp;media=http%3A%2F%2Fwww.wiselythemes.com%2Fhtml%2Fcozy%2Fimages%2Fnews-img1.jpg"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="mailto:?subject=Check%20out%20this%20blog%20post%20from%20Cozy%20Real%20Estate!&amp;body=http://www.wiselythemes.com/html/cozy/blog-detail.html"><i class="fa fa-envelope"></i></a></li>
					</ul>
					
					<a class="print-button" href="javascript:window.print();">
						<i class="fa fa-print"></i>
					</a>
				</div>
				
				<h1 class="section-title">Comments</h1>
				
				<div class="comments">
					<ul>
        				<% loop $Comments %>                        
        				<li>
            				<img src="images/comment-man.jpg" alt="" />
            				<div class="comment">                                
                				<h3>$Name<small>$Created.Format('j F, Y')</small></h3>
                				<p>$Comment</p>
            				</div>
       					 </li>
       				 <% end_loop %>
   					 </ul>
						
					<div class="comments-form">
						<div class="col-sm-12">
							<h3>Leave a Reply</h3>
							<p>Your email address will no be published. Required fields are marked*</p>
						</div>
						<div  class="col-sm-12">
							$CommentForm
						</div>
					</div>
				</div>
				
			</div>	
			<!-- END MAIN CONTENT -->
			
			
			<!-- BEGIN SIDEBAR -->
			<div class="sidebar blog-side col-sm-4">
				
				<!-- BEGIN CATEGOTY -->
				<h2 class="section-title">Category</h2>
				<ul class="categories">
				<% loop $Categories %>
					<li><a href="$Link">$Title <span>($Articles.count)</span></a></li>
				<% end_loop %>
				</ul>
				<!-- END CATEGOTY -->
				
				
				<!-- BEGIN LATEST NEWS -->
				<div class="col-sm-12">
					<h2 class="section-title">Latest Articles</h2>
					<ul class="latest-news">
					<% loop $LatestArticles(3) %>
					<li class="col-md-12">
						<div class="image">
							<a href=$Link></a>
							$Photo
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
			<!-- END SIDEBAR -->

		</div>
	</div>
</div>