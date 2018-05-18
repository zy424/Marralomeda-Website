<% include Banner %>

<!-- BEGIN CONTENT -->
		<div class="content">
			<div class="container">
				<div class="row">
                    
                    <div class="main col-sm-8" />
                    <div class="col-sm-12">
                        <h2 class="page-header  second-header center">Our $Name Programme</h2>
                    </div>
					<div >
						<% with $Photo.Fit(700,500) %>
							<img class="my-custom-class" src="$URL" alt="" width="$Width" height="$Height" />
						<% end_with %>
					</div>
                        <p>$Teaser</p>
                        $Content
                        $Form
                    </div>
					
					<div class="second-aside col-sm-4">
						<% if $Menu(2) %>
    
 							<h3><a href="activity-center">Activity Centre Programme </a></h3>
    						<ul class="subnav">  
    							<% loop $Menu(2) %>
        							<li><a class="$LinkingMode" href="$Link">$MenuTitle</a></li>
     					 		<% end_loop %>
    						</ul>
						<% end_if %>
					</div>
				</div>
			</div>
		</div>
		<!-- END CONTENT -->