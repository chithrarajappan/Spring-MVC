<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Welcome to Soccer</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <!-- styles -->
  <link rel="stylesheet" href="resources/css/fancybox/jquery.fancybox.css">
  <link href="resources/css/bootstrap.css" rel="stylesheet" />
  <link href="resources/css/bootstrap-theme.css" rel="stylesheet" />
  <link rel="stylesheet" href="resources/css/slippry.css">
  <link href="resources/css/style.css" rel="stylesheet" />
  <link rel="stylesheet" href="resources/color/default.css">
  <!-- =======================================================
    Theme Name: Groovin
    Theme URL: https://bootstrapmade.com/groovin-free-bootstrap-theme/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
  <script src="resources/js/modernizr.custom.js"></script>
</head>

<body>
  <header>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.jsp">Soccer</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" align="">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="index.jsp#about">About </a></li>
        <li><a href="clubhome">Clubs</a></li>
        <li><a href="playerhome">Players</a></li>
        <li><a href="matchScheduleguest">Matches</a></li>
        <li><a href="ticketbook">Ticket Booking</a></li>
        <li><a href="index.jsp#contact">Contact Us</a></li>
        <li><a href="login">Sign In</a></li>
      </ul>
<!--
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
-->
    </div>
  </div>
</nav>

  </header>


<section id="intro">
    <ul id="slippry-slider">
      <li>
        <a href="#slide1"><img src="resources/img/images/403493644-soccer-wallpapers.jpg" alt="Welcome to Soccer!"></a>
      </li>
      <li> 
        <a href="#slide2"><img src="resources/img/images/403493748-soccer-wallpapers.jpg"  alt="Winning  isn't  eveything, it's the only thing!!!"></a>
      </li>
      <li>
        <a href="#slide3"><img src="resources/img/images/camp-nou.jpg" alt="Let's go, you are going to <span class='red'>♥</span> it :)"></a>
      </li>
    </ul>
  </section>
  <!-- end intro -->
  <!-- Section about -->
  <section id="about" class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2">
          <div class="heading">
            <h3><span>About us</span></h3>
          </div>
          <div class="sub-heading">
            <p>
              While football traces its origins to rugby and soccer, the unique history of American football has resulted in a game that substantially differs from its predecessors. As such, even those who are familiar with rugby and soccer might find football difficult to follow. Although a short summary might not sufficiently cover the intricacies of football, knowing its basic rules and goals can help you to develop a deeper understanding of the game.
            </p>
          <img src="resources/img/images/403493564-soccer-wallpapers.jpg" width="30%" height="40%">
          </div>
        </div>
      </div>
      
        
      </div>
    </div>
  </section>
  <!-- end section about -->
  <!-- section works -->
  <section id="works" class="section gray">
    <div class="container">
      <div class="row">
      
      <div class="row">
        <div class="col-md-12">
         
        </div>
      </div>
    </div>
  </section>
  <!-- section works -->
  <!-- section contact -->
<section id="matches" class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2">
          <div class="heading">
            <h3><span>Matches</span></h3>
          </div>
          <div class="sub-heading">
            <p>
             You can see the matches here, comment here!
            </p>
          </div>
          <div>
              Matches today :  Tottenham <h1>VS</h1> Man united
                   

          </div>
        </div>
      </div>
      
        
      </div>
    </div>
  </section>
  <section id="contact" class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2">
          <div class="heading">
            <h3><span>Get in touch</span></h3>
          </div>
          <div class="sub-heading">
            <p>
          
<br>
    To contact us then simply complete the form below and then click on the 'send message' button.
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h4><i class="icon-envelope"></i><strong>Contact form</strong></h4>
          <p>
            Want to know about us!
          </p>
          <!-- start contact form -->
          <div class="cform" id="contact-form">


            <div id="sendmessage">Your message has been sent. Thank you!</div>
            <div id="errormessage"></div>
            <form action="" method="post" role="form" class="contactForm">
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                <div class="validation"></div>
              </div>

              <div class="text-center"><button type="submit" class="btn btn-lg btn-theme">Send Message</button></div>
            </form>
          </div>
          <!-- END contact form -->
        </div>
        <div class="col-md-6">
          <h4>Find our location</h4>
          <p>View from google map</p>
          <!-- map -->
          <div id="section-map" class="clearfix">
            <div id="google-map" data-latitude="40.713732" data-longitude="-74.0092704"></div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <footer style="border-bottom-width: 65px; padding-top: 92px;">
    <div class="verybottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aligncenter">
              <ul class="social-network social-circle">
                <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="aligncenter">
              <p>
                &copy; IPSR Theme - All right reserved
              </p>
              <div class="credits">
                <!--
                  All the links in the footer should remain intact. 
                  You can delete the links only if you purchased the pro version.
                  Licensing information: https://bootstrapmade.com/license/
                  Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Groovin
                -->
                <a href="https://soccerwins.com/">www.Soccer.com</a> by <a href="https://bootstrapmade.com/">SoccerWins</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <a href="#" class="scrollup"><i class="fa fa-angle-up fa-2x"></i></a>
  <!-- javascript -->
  <script src="resources/js/jquery-1.9.1.min.js"></script>
  <script src="resources/js/jquery.easing.js"></script>
  <script src="resources/js/classie.js"></script>
  <script src="resources/js/bootstrap.js"></script>
  <script src="resources/js/slippry.min.js"></script>
  <script src="resources/js/nagging-menu.js"></script>
  <script src="resources/js/jquery.nav.js"></script>
  <script src="resources/js/jquery.scrollTo.js"></script>
  <script src="resources/js/jquery.fancybox.pack.js"></script>
  <script src="resources/js/jquery.fancybox-media.js"></script>
  <script src="resources/js/masonry.pkgd.min.js"></script>
  <script src="resources/js/imagesloaded.js"></script>
  <script src="resources/js/jquery.nicescroll.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>
  <script src="resources/js/AnimOnScroll.js"></script>
  <script>
    new AnimOnScroll(document.getElementById('grid'), {
      minDuration: 0.4,
      maxDuration: 0.7,
      viewportFactor: 0.2
    });
  </script>
  <script>
    $(document).ready(function() {
      $('#slippry-slider').slippry(
        defaults = {
          transition: 'vertical',
          useCSS: true,
          speed: 5000,
          pause: 3000,
          initSingle: false,
          auto: true,
          preload: 'visible',
          pager: false,
        }

      )
    });
  </script>

  <script src="resources/js/custom.js"></script>
  <script src="resources/contactform/contactform.js"></script>

</body>

</html>
  