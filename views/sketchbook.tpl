<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> Ele's sketchbook </title>
		<link rel="stylesheet" href="static/css/bootstrap.min.css" type="text/css">
		<link rel="stylesheet" href="static/css/sketchbook.css" type="text/css">
		<script src="http://code.jquery.com/jquery.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="static/js/bootstrap.min.js"></script>
		<script src="static/js/processing-1.4.1.min.js"></script>
	</head>	
	<body>
		<div class="container">
			<div class="navbar navbar-fixed-top">
				<div class="navbar-inner">
					<ul class="nav">
						<li><a href="https://github.com/Eleonore9/Processing/" target="_blank">My code</a></li>
						<!--<li><a href="http://elle-est-au-nord.com/" target="_blank">My website</a></li>-->
					</ul>
					<a class="brand" href="#">Extracts from my sketchbook</a>
					<ul class="nav">
						<!--<li><a href="https://github.com/Eleonore9/Processing/" target="_blank">My code</a></li>-->
						<li><a href="http://elle-est-au-nord.com/" target="_blank">My website</a></li>
					</ul>
				</div>
			</div>
			<div class="sketch">
				<h3>My "hello world" in Processing.js</h3>
				<h4> Hover with your mouse to drag the cicles, click to stop the program </h4>
				<canvas id="canvas1" data-processing-sources="static/img/helloWorld3.pde"></canvas>
			</div>

			<div class="sketch">
				<h3>Shooting stars</h3>
				<h4> Click and drag with your mouse to add stars to the canvas </h4>
				<canvas id="canvas2" data-processing-sources="static/img/shootingStars.pde"></canvas>
			</div>
			<footer>
				<p>
					Copyright 2013 - <a href="https://twitter.com/eleonoremayola/" target="_blank">Eleonore</a>
				</p>
			</footer>
		</div>
	</body>
</html>