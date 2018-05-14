
 <header class="business-header">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <h1 class="display-3 text-center text-white mt-4">Welcome to Our Activity Center</h1>
          </div>
        </div>
      </div>
    </header>
<!-- Page Content -->

<div class="container">
  <div class=" acontent row">
    <div class="col-sm-8">
      <h2 class="mt-4  activity ">What We Do</h2>
      <p>$Content</p>
      <p>
        <a class="btn btn-primary btn-lg" href="contact-us">Click to Join Us &raquo;</a>
      </p>
    </div>
    <div class="col-sm-4">
      <h2 class="mt-4  activity">Contact Us</h2>
      <address>
        <strong>Marralomeda Activity Centre</strong>
        <br>50A Dunedin Street
        <br>Redwood, CHCH 8051
        <br>
      </address>
      <address>
        <abbr title="Phone">P:</abbr>
        (03) 352-8292
        <br>
        <abbr title="Email">E:</abbr>
        <a href="mailto:admin@marralomeda.org.nz">admin@marralomeda.org.nz</a>
      </address>
    </div>
  </div>
  <!-- /.row -->

  <div class="row">
        <div class="col-sm-12">
            <h2 class="page-header activity">Our Programme</h2>
        </div>
    <% loop $Children %>
        <div class="col-lg-4 col-sm-6 card-margin">
            <div class="card card-img">
                <a href=$Link > 
                <div class="card-shadow card-img-top">
                    <p> Find Out More! </p>
                </div>
                <% with $Photo.Fill(300,200) %>
                <img class="card-img-top" src="$URL" alt="">
                <% end_with %>
                </a>
            </div>
            <div class="card-body">
                <h4 class="card-title">$Name</h4>
            </div>
        </div>
    <% end_loop %>
  </div>
  <!-- /.row -->

  <!-- gallery -->
    <div class="row  text-lg-left">
      <div class="col-sm-12">
        <h2 class="page-header activity">Our Activity Gallery</h2>
      </div>
      <% loop $GalleryImages %>

        <div class="col-lg-3 col-md-4 col-xs-6 activity-gallery" data-aos="zoom-in">
          <a href="#" class="d-block mb-4 h-100">
            <% with $Photo.Fill(400,300) %>
              <img class="img-fluid img-thumbnail" src="$URL" alt="">
            <% end_with %>
          </a>
        </div>
      <% end_loop %>
  </div>
  <!-- /.row-gallery -->   
</div>
<!-- /.container -->
