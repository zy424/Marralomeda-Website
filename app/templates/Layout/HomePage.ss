
<!-- BEGIN HOME SLIDER SECTION -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	<!-- Indicators 
	<ol class="carousel-indicators">
	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	<li data-target="#carousel-example-generic" data-slide-to="1"></li>
	</ol> -->

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
	<div class="item active"id="slide1" style="background: url(../images/slider/slider8.jpg) no-repeat left center; background-size: cover;"> <!-- Ready for JS Injection -->
		<div class="carousel-caption">
		<div class="caption sfr slider-title">Welcome to Marralomeda Trust</div>
		<div class="caption sfl slider-subtitle">The Best Place on Eatrh</div>
		<a href="about-us" class="caption sfb btn btn-default btn-lg slider-button">Learn More</a>
		</div>
	</div>
	<div class="item" id="slide2" style="background: url(../images/slider/slider7.jpg) no-repeat left center; background-size: cover;"> 
		<div class="carousel-caption">
		<div class="caption sfr slider-title">The Wonderful Community</div>
		<div class="caption sfl slider-subtitle">Each Person is Accepted and  Loved</div>
		<a href="activity-center" class="caption sfb btn btn-default btn-lg slider-button">Learn More</a>
		</div>
	</div>
	<div class="item" id="slide3" style="background: url(../images/slider/slider0.jpg) no-repeat left center; background-size: cover;"> 
		<div class="carousel-caption">
		<div class="caption sfr slider-title">Our Mission Statement</div>
		<div class="caption sfl slider-subtitle">The Marralomeda Community exists so that people with an intellectual disability may have the dignity and quality of life that is their birthright.
</div>
		</div>
	</div>
	</div>
	

	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	<span class="glyphicon glyphicon-chevron-left"></span>
	<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	<span class="glyphicon glyphicon-chevron-right"></span>
	<span class="sr-only">Next</span>
	</a>

</div>		
<!-- END HOME SLIDER SECTION -->

				


<!-- BEGIN CONTENT WRAPPER -->
<div class="content">
	<div class="container">
		<div class="row">
		
			<!-- BEGIN MAIN CONTENT -->
			<div class="main home-main col-sm-8">
			<div class= "home-philosophy" data-aos="flip-left"> 
			<h1 class="section-title">Marralomeda Philosophy</h1>
				<div data-aos="zoom-in">
					<p>
						Marralomeda is a Christian community. We believe that each person with an intellectual disability is fully a person with all the rights of a human being and above all the right to be loved, recognised and respected for him/herself.
					</p>
				</div>

				<div data-aos="zoom-in">
					<p>
						Because Marralomeda is a Christian community, prayer is part of daily experience.
					</p>
				</div>

				<div data-aos="zoom-in">
					<p>
						There is no hierarchy of importance at Marralomeda. Each person in the community is accepted as they are and valued for who they are, their gift is precious to the community. Each person is accepted as “the light of Christ”.
					</p>
				</div>
				
				<div data-aos="zoom-in">
					<p>
						Marralomeda is not only a facility for persons with intellectual disability, it is a community where people come together to grow in bonds of friendship. 
					</p>
				</div>

				<div data-aos="zoom-in">
					<p>
						Through walking with each other as we journey through the dailyness of our lives we celebrate our gifts and support each other in our various disabilities. 
					</p>
				</div>	

				<div data-aos="zoom-in">
					<p>
						No one person has all the gifts to make the community truly alive, therefore we rely on one another. Our intellectually disabled members often reveal to us our own preoccupation with the so-called “important” things of life and can forget how to enjoy life, to celebrate and to cherish relationships in a simple way. 

					</p>	
				</div>
				
				<div data-aos="zoom-in">
					<p>
						Central to our philosophy is the concept of empowerment. We seek to empower our community members to choose and decide for themselves and to contribute to all tasks pertaining to the running of their home and community to the level possible for each individual.

					</p>
				</div>

				<div data-aos="zoom-in">
					<p>
						We believe in community integration and encourage our community members to participate in activities within the wider community and offer support to enable this to happen.
					</p>
				</div>

				<div data-aos="zoom-in">
					<p>
						Hospitality is also central to Marralomeda philosophy. Whoever comes to the door is welcomed in an appropriate way and made to feel valued and important. 
					</p>
				</div>

				<div data-aos="zoom-in">
					<p>
					We believe the busyness of daily life must never overtake the unexpected call to welcome.
					</p>
				</div>
				
			
				<div data-aos="flip-left">
					<p>
						“TO LOVE PEOPLE IS TO RECOGNISE THEIR GIFT AND TO HELP THEM USE IT AND DEEPEN IT. A COMMUNITY IS BEAUTIFUL WHEN ALL ITS MEMBERS ARE USING THEIR TALENTS FULLY”.--  Jean Vanier.
					</p>	
				</div>

				</div>
			
				<br><br><br><br><br>
			</div>
				
			<!-- END MAIN CONTENT -->
			
			<!-- BEGIN SIDEBAR -->
			<div class="sidebar home-side col-sm-4">
				
				<!-- BEGIN SIDEBAR ABOUT -->
				<div class="col-sm-12">
					<h2 class="section-title">Latest Articles</h2>
					<ul class="latest-news">
					<% loop $LatestArticles(4) %>
					<li class="col-md-12">
						<div class="image">
							<a href=$Link></a>
							$Photo.Fit(70,70)	
						</div>
						
						<ul class="top-info">
							<li><i class="fa fa-calendar"></i>$Date</li>
						</ul>
							
						<h4>$Title</h4>
						<p>$CategoriesList</p>
					</li>	
					<% end_loop %>
					</ul>
					<div class="center"><a href="blog" class="btn btn-default-color">View All</a></div>
					
				</div>
				<!-- END SIDEBAR ABOUT -->
				
				
				<div class="col-sm-12">
					<h2 class="section-title"> Popular Activities</h2>
					<ul class="activity">
						<% loop $PopularActivities(5) %>
						<li class="col-lg-12">
							<a href=$Link>
								$Photo.Fit(100,100)
							</a>
							<div class="info">										
								<h5>$Name</a></h4>
								<p>$Teaser</p>
								<h6>Join us now</h6>
							</div>
						</li>
						<% end_loop %>
					</ul>
				</div>
				
				
				
			</div>
			<!-- END SIDEBAR -->
			
		</div>
	</div>
</div>
<!-- END CONTENT WRAPPER -->

