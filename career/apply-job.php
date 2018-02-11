<?php  include 'inc/header.php' ?>
<!-- Header End --> 
<!-- breadcrumb Wrapper Start -->
<div class="breadcrumb-wrapper">
  <div class="container">
    <div class="banner-title">
      <h2>Apply Job</h2>
      <div class="line"> <span></span></div>
    </div>
    <ul class="inner-breadcrumb">
      <li><a href="index-2.html">Home</a></li>
      <li>Pages</li>
      <li>Apply Job</li>
    </ul>
  </div>
</div>
<!-- breadcrumb Wrapper End --> 
<!-- Inner page Wrapper Start -->
<div class="inner-page-wrapper apply-jobs-wrapper">
  <div class="container">
    <div class="row">
      <div class="col-sm-8 col-sm-offset-2 col-xs-offset-0">
        <div class="row">
          <form>
            <div class="col-sm-6">
              <input class="form-control" id="name" placeholder="Your Name" required type="text">
              <input class="form-control" id="phone" placeholder="Your Phone number" required type="text">
              <input class="form-control" id="email" placeholder="Enter Your E-Mail" required type="email">
            </div>
            <div class="col-sm-6">
              <textarea class="form-control" id="comment" placeholder="Comment here..." required></textarea>
              <span class="btn btn-file"> Browse Your Resume
              <input type="file">
              </span> </div>
          </form>
        </div>
        <div class="row">
          <div class="col-md-12">
            <button type="submit" class="btn-one">Submit</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Inner page Wrapper End --> 
<!-- Footer styles Start -->
<?php  include 'inc/footer.php' ?>