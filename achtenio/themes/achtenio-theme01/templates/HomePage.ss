<!DOCTYPE html>
<html>
<head>
	<% base_tag %>

	$MetaTags
	<link rel="stylesheet" type="text/css" href="$ThemeDir/css/landing.css">
</head>
<body>
	<div>
		<div class="overlay">
			<div id="header-img">
				<img src="$ThemeDir/img/achtenio_somalogo.png" alt="Ryan Achten Logo">
			</div>
			<header>
				<nav id="top-nav">
					<a class="nav-link nav-ra-logo" href="$AbsoluteBaseURL">ryan/achten</a>
					<% loop $Menu(1) %>
						<a class="nav-link $LinkingMode" href="$Link" title="Go to the $Title page">$MenuTitle</a>
					<% end_loop %>
				</nav>
				<!-- <hr class="nav-seperator"> -->
			</header>
		</div>
		<div id="container"><br /><br /><br /><br /><br />Generating world...
		</div>

			<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/three.js/84/three.min.js"></script>
			<script src="$ThemeDir/js/threejs/FirstPersonControls.js"></script>
			<script src="$ThemeDir/js/threejs/ImprovedNoise.js"></script>
			<script src="$ThemeDir/js/threejs/Detector.js"></script>
			<script src="$ThemeDir/js/threejs/stats.min.js"></script>

			<script src="$ThemeDir/js/landing_FogTest.js"></script>

		
		</div>
	
</body>
</html>