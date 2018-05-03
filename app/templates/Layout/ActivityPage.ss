<% include Banner %>

<!-- BEGIN CONTENT -->
		<div class="content">
			<div class="container">
				<div class="row">
                    
                    <div class="main col-sm-8" />
                    <div class="col-sm-12">
                        <h2 class="page-header  second-header center">Our $Name Programme</h2>
                    </div>
                        <p>$Teaser</p>
                        $Content
                        $Form
                    </div>
					
					<div class="second-aside col-sm-4">
						<% if $Menu(2) %>
                            <img src="images/logo2.png">
 							<h3>Activity Centre Programme</h3>
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