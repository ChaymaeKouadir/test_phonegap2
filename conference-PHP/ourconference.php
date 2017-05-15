
<!DOCTYPE html>
<html>
<head>
<title>Outil de gestion des conferences</title> 

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fortune Estates Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, SmartPhone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all"> 
<link rel="stylesheet" href="css/ken-burns.css" type="text/css" media="all" /> 

<script src="js/jquery-2.2.3.min.js"></script> 

<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	    <script>
			$(document).ready(function() {
				$('.popup-top-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
				});																							
			}); 
		</script>

<script type = "text/javascript" >
src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


<script type = "text/javascript" language = "javascript">
	$(document).ready(function() {
		$.getJSON('http://localhost:8040/conference/Controllers/communication.php?fx=getConferenceById&id=5', function(jd) {
			  var img = new Image();
 			 img.src = jd.logo;
 			
  			document.getElementById("img-container").appendChild(img);
			$('#description').html( jd.desc_conference );
			$('#title-container').html( jd.nom_conference );

		});
							 $.getJSON('http://localhost:8040/conference/Controllers/communication.php?fx=getSessionByConferenceId&id=1', function(jd) {
                  $('#stage').html('  <p> ' + jd.id_session + '</p>');
                  $('#stage').append('<p>' + jd.date_session+ '</p>');
                  $('#stage').append('<p>' + jd.periode_session+ '</p>');
            });

	});
</script>
<!--//pop-up-box -->
<!-- web-fonts -->  
<link href='//fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- //web-fonts -->
</head>
<body class="bg">
	<div class="agile-main"> 
		<div class="menu-wrap" id="style-1"> 
			
			<nav class="top-nav">
				<ul class="icon-list">
				<li><a class="active" href="index.html"><i class="glyphicon glyphicon-home"></i> Home </a></li>
					<li><a href="profile.html"><i class="glyphicon glyphicon-user"></i> Profile </a></li>
					<li><a href="conference.html"><i class="glyphicon glyphicon-th"></i> Conference </a></li>
					<li><a href="s_networks.html"><i class="glyphicon glyphicon-heart-empty"></i> Social networks </a></li>
					<li><a href="multimedia.html"><i class="glyphicon glyphicon-picture"></i> Multimedia</a></li>
					<li><a href="favorites.html"><i class="glyphicon glyphicon-star"></i> Favorites	</a></li>
					<li><a href="settings.html"><i class="glyphicon glyphicon-wrench"></i> Settings </a></li>
					<li><a href="about.html"><i class="glyphicon glyphicon-info-sign"></i> About </a></li>
					<li><a href="#small-dialog" class="sign-in popup-top-anim"><i class="glyphicon glyphicon-log-in"></i> Sign In</a></li>                                             
							
						
						<div class="clearfix"> </div>
						<script>
							$( "li a.sign-in" ).click(function() {
							
							
							});
						</script> 
				</ul>
			</nav>
			<button class="close-button" id="close-button">C</button>
		</div> 
		
		
		<div class="content-wrap">
			<div class="header"> 
				<div class="menu-icon">   
					<button class="menu-button" id="open-button">O</button>
				</div>
				<div class="logo">
					<h2><a href="index.html"><img src="images/logo.png"></a></h2>
				</div>
				<div class="login">
					<a href="#small-dialog" class="sign-in popup-top-anim"><span class="glyphicon glyphicon-envelope"></span></a>
					<a href="#small-dialog" class="sign-in popup-top-anim"><span class="glyphicon glyphicon-bell"></span></a>
					<!-- modal -->
					<div id="small-dialog" class="mfp-hide">
						<div class="login-modal"> 	
							<div class="booking-info">
								<h3><a href="main.html">Sign in !</a></h3>
							</div>
							<div class="login-form">
								<form action="#" method="post">
									<div class="styled-input">
										<input type="text" name="Username" required=""/>
										<label>Username</label>
										<span></span>
									</div>
									<div class="styled-input">
										<input type="password" name="Password" required=""> 
										<label>Password</label>
										<span></span>
									</div> 
									<div class="wthree-text"> 
										
										<div class="clear"> </div>
									</div> 
									<input type="submit" value="Sign In">		
								</form>
								
							</div> 
						</div>
					</div>
					<!-- //modal --> 
					<!-- modal-two -->
				
					<!-- //modal-two --> 
				</div> 
				<div class="clearfix"> </div>
			</div>
			<div class="content">
				<!-- banner -->
				<div class="banner about-banner"> 
					<div class="banner-img">  
						  
					</div> 
					
					<div class="welcome"> 
					<h1 align="center" id="title-container"> </h1>
					<div id="img-container" width="100%" height="50%"> </div>
					</br></br></br><p class="w3title-text" id="description"> </p>
					<hr><hr><hr><hr>
					<p class="w3title-text" id="stage"> </p>
						<br><br><br>
				</div>
					
					
				</div>
				<!-- //banner -->
				<!-- properties --> 
			
				<!-- //properties --> 
				<!-- brands -->
				
				<!-- //brands -->
				<!-- footer -->
				<div class="w3agile footer"> 
				
					 
					<div class="footer-text">
						<p>&copy; CERI Avignon</a></p>
					</div>
				</div> 
				
			
				
			</div>
		</div>
	</div> 
	<!-- menu-js -->
	<script src="js/classie.js"></script>
	<script src="js/main.js"></script>
	<!-- //menu-js -->
	<!-- nice scroll-js -->
	<script src="js/jquery.nicescroll.min.js"></script> 
	<script>
		$(document).ready(function() {
	  
			var nice = $("html").niceScroll();  // The document page (body)
		
			$("#div1").html($("#div1").html()+' '+nice.version);
		
			$("#boxscroll").niceScroll({cursorborder:"",cursorcolor:"#00F",boxzoom:true}); // First scrollable DIV
		});
	</script>
	<!-- //nice scroll-js -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>