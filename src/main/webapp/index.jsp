<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Note Taker : Home Page</title>

<%@include file="all_js_css.jsp"%>

</head>
<body style="background-color: darkturquoise;">
	<%@include file="navbar.jsp"%>
	<br>
	<h1 class="heading" 
		style="font-family: 'Arial', sans-serif; font-size: 36px; font-weight: bold; color: #4CAF50; /* Green color */ text-align: center; text-transform: uppercase; letter-spacing: 2px; margin-bottom: 20px; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);">
		NoteTaker: Your Personal Note Management and Task Tracking Solution</h1>

	<!-- Caraousel -->
	<div id="carouselExampleIndicators" class="carousel slide">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/Note1.jpg.jpg" class="d-block w-100"
					style="margin: auto; height: 80vh; border: 5px solid aqua;"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/Note2.jpg.jpg" class="d-block w-100"
					style="margin: auto; height: 80vh; border: 5px solid aqua;"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/Note3.jpg.jpg" class="d-block w-100"
					style="margin: auto; height: 80vh; border: 5px solid aqua;"
					alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<p style="font-size: 50px; text-align: center;">Click on Add Note
		to fill the details.</p>

</body>
</html>
