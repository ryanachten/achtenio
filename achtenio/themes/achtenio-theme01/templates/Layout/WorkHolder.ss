<head>	
	<link rel="stylesheet" type="text/css" href="$ThemeDir/css/work.css">
</head>

<body>
	<!-- $Breadcrumbs TODO: Haven't styled -->

	<section class="work-overview">
		<h1>$Title</h1>
		<h2>recent design &amp; development projects</h2><!-- Could replace this with $Content -->
	</section>

	<main class="container">

		<div class="project-header">
			<div class="project-header-descript">
				<h1>Vertice</h1>
				<h2>3D Archive Interface</h2>
				<hr id="header-seperator">
				<p class="pullquote">Victoria University of Wellington, 2016. Submitted to the Victoria University of Wellington in fulfilment of the requirements for the degree of Master of Design Innovation.</p>
				<a class="text-button" href="/achtenio/work/vertice">Read More</a>
			</div>
		</div>

		<div class="filter-panel">
			$WorkSearchForm
		</div>

		<!-- Project gallery tiles -->
		<% loop $Children %>
			<div class="project-cover" style="background-image:url($HeaderImage.Filename);">
				<div class="rollover">
					<h1>$Title</h1>
					<h2>$Subtitle</h2>
					<p>$Date.Nice | $Client</p>
					<p class="teaser">$Teaser</p>
					<a class="text-button" href="$Link">Read More</a>
				</div>
			</div>
		<% end_loop %>

	</main>

	<section id="behance-hook">
		<p>More <span id="hook-logo">r/a</span> projects can be viewed on Behance:</p>
		<a class="text-button" href="https://www.behance.net/somavisions">View on Behance</a>
	</section>
</body>
	<script src="$ThemeDir/js/work.js"></script> 