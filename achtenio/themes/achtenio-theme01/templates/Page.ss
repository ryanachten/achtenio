<!DOCTYPE html>
<html>
<head>
	<% base_tag %>

	$MetaTags

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Kumar+One|Libre+Baskerville|Roboto" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="https://necolas.github.io
	/normalize.css/5.0.0/normalize.css">
	<link rel="stylesheet" type="text/css" href="$ThemeDir/css/main.css">
	<link rel="stylesheet" type="text/css" href="$ThemeDir/css/about.css">
	<!-- Scripts -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
</head>
<body>
	<header>
		<nav id="top-nav"><!-- 
			<a class="nav-link nav-ra-logo" href="landing.html">ryan/achten</a>
			<a class="nav-link" href="work.html">work</a>
			<a class="nav-link" href="about.html">bio</a>
			<a class="nav-link" href="cv_accord.html">cv</a> -->

			<a class="nav-link nav-ra-logo" href="$AbsoluteBaseURL">ryan/achten</a>
			<% loop $Menu(1) %>
				<a class="nav-link $LinkingMode" href="$Link" title="Go to the $Title page">$MenuTitle</a>
			<% end_loop %>
		</nav>
		<hr class="nav-seperator">
	</header>

	<main class="container">
	$Breadcrumbs <!-- TODO: Haven't styled -->
		<div id="header-img">
			<img id="about-header-img" src="$ThemeDir/img/achtenio_somalogo.png" alt="Ryan Achten Logo">
		</div>
		
		<h1 id="about-title">$Title</h1>

		<div class="about-text">
				$Content
			</div>
		<div class="about-text">
				$Content
			</div>
		<!-- </main> -->

		<div>
			<div>
				<!-- <a class="nav-link" href="">cv</a> <!-- TODO -->
			</div>
		</div>
	</main>
	<footer>
		<hr class="nav-seperator">
		<nav id="bottom-nav">
			<a class="nav-link" href="https://www.behance.net/somavisions">Be</a>
			<a class="nav-link" href="https://nz.linkedin.com/in/ryanachten">in</a>
			<a class="nav-link" href="mailto:ryanachten@gmail.com">@</a>
		</nav>
	</footer>

	<script type="text/javascript">

	</script>
</body>
</html>