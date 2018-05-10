<!-- BEGIN PAGE TITLE/BREADCRUMB -->
		<div class="parallax pattern-bg" data-stellar-background-ratio="0.1" style="background-image: url(images/banner.jpg)">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h1 class="page-title">$Title</h1>
						
						<div class="breadcrumb">
							<a href=home>Home </a> &raquo;
							<a href="#">$Title</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE TITLE/BREADCRUMB -->

<div class="container">
    <div class="row">
            <div class="col-sm-12">
                <h2 class="page-header">$Content</h2>
            </div>

    <% loop $Children %>
        <div class="col-lg-4 col-sm-6 text-center our-team">
            <% with $Photo.Fill(200,200) %>
                <img class="img-circle img-responsive img-center teamer-img" src="$URL" alt="">
            <% end_with %>
             <div class="team-teaser">
                <h3>$Name
                    <small>$JobTitle</small>
                </h3>
                <p data-aos="zoom-in">$Teaser</p>
            </div>
        </div>
    <% end_loop %>
    </div>
    <hr>
</div>

