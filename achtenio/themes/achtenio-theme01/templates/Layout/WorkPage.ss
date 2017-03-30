<head>
	<link rel="stylesheet" type="text/css" href="$ThemeDir/css/project.css">
</head>
<body>
	<main class="container">
		<header id="project-header" style="background-image:url($HeaderImage.Filename);">
			<div>
				<h1 id="project-title">$Title</h1>
				<hr class="content-seperator">
				<h2 id="project-subtitle">$Subtitle</h2>
			</div>
		</header>
	
		<div id="project-overview">
			<p>$Date.Nice | $Client</p>
			<p>$Teaser</p>
		</div>
	
		<div class="project-content">

			<div class="project-section text-section">
				$Content
			</div>

			<div class="project-section text-section">
				<% loop $WorkSections %>

					<% if $Photo %>
						<figure class="project-section img-section">
							$Photo
							<figcaption>$Description</figcaption>
						</figure>
					<% else_if $Video %>
						<div class="video-embed" >
							<iframe src="https://player.vimeo.com/video/$Video" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
						</div>
					<% end_if %>
				<% end_loop %>
			</div>

			<section id="behance-hook">
				<p>View the <span id="hook-logo">$Title</span> project on Behance for more information:</p>
				<a class="text-button" href="$Behance">View on Behance</a>
			</section>
	</main>
</body>