<html>
	<head>
		<title>Reviews</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="bootstrap-styles.css" > 
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	
	
	</head>
	
		<!-- Navbar -->
	<nav class="navbar navbar-default">
		  <div class="container">
			<div class="navbar-header">
		   	<a class="navbar-brand" href="#myPage"></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
			  <ul class="nav navbar-nav navbar-right">
				<li><a href="LogIn.php">LOG-IN</a></li>
				<li><a href="Browsing.php">BROWSE</a></li>
				<li><a href="Reviews.php">REVIEWS</a></li>
				<li><a href="MyRatings.php">MY RATINGS</a></li>
				<li><a href="HomePage.php">HOME</a></li>
			  </ul>
			</div>
	 	 </div>
		</nav>
	
	
	<body id='myPage'>
	
	<!-- Header -->
		<div class="jumbotron text-center">
		<h1 style='color:crimson;'>Rate a Restaurant</h1> 
		<p>Find your next great meal</p> 
		</div>
	
	<!-- Sub Header -->
	<div class="text-center">
	<h3 style= 'color:crimson;'>Leave a Review for</h3>
	</div>
	
	<!-- Restaurant -->
	<div class="text-center">
	<h2> <img src='burger_image.jpeg'></img>  <br>  <br> 
					<span class="glyphicon glyphicon-star logo"></span>
					<span class="glyphicon glyphicon-star logo"></span>
					<span class="glyphicon glyphicon-star logo"></span>
					<span class="glyphicon glyphicon-star logo"></span>
					<span class="glyphicon glyphicon-star logo"></span> <br>
					Best Burgers
					<h4>Casual brewpub that sells burgers, sandwiches, and other down-home favorites. </h4><br>
	
	
	<!-- Leave a review -->
	<br>
	<form action='somefile.php' method='post'>
		<div class="text-center">
		<div class="text-center">
		What dish did you have? <br>
		<select name="dish" size="1">
		<option value="Black and Bleu Burger">Black and Bleu Burger</option>
		<option value="Classic Cheeseburger">Classic Cheeseburger</option>
		<option value="Club Sandwich">Club Sandwich</option>
		<option value="Buffalo Wings">Buffalo Wings</option>
		<option value="Cobb Salad">Cobb Salad</option>
</select>
		<br> <br>
		<textarea entry="text" id="review" name="review" rows="10" cols="50" ></textarea>
	
	
	<!-- Leave a star rating -->
  <meta charset="UTF-8">
  <div class="rate">
    <input type="radio" id="star5" name="rate" value="5" />
    <label for="star5" title="text">5 stars</label>
    <input type="radio" id="star4" name="rate" value="4" />
    <label for="star4" title="text">4 stars</label>
    <input type="radio" id="star3" name="rate" value="3" />
    <label for="star3" title="text">3 stars</label>
    <input type="radio" id="star2" name="rate" value="2" />
    <label for="star2" title="text">2 stars</label>
    <input type="radio" id="star1" name="rate" value="1" />
    <label for="star1" title="text">1 star</label>
  </div>
	 <!--submit button -->
	<br>
	<div class="text-center">
    <button type="submit">Submit</button>
	</div>
    </form>
		
	
</html>