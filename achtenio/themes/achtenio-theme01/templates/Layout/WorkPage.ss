<body>
	<main class="container">
		<header id="project-header" style="background-image:url($HeaderImage.Filename);">
			<div>
				<h1 id="project-title">$Title</h1>
				<h2 id="project-subtitle">$Subtitle</h2>
			</div>
		</header>
		
		<div id="project-overview">
			<p class="pullquote">$Teaser</p>
			<hr>
			<p id="project-dateclient">$Date.Nice | <strong>$Client</strong></p>
			<div class="project-categories">
				<p><strong>Categories</strong>:</p>
				<ul>
					<% loop $Categories %>
						<li>$Title<% if not $Last %>, <% end_if %></li>
					<% end_loop %>
				</ul>
			</div>
			<div class="project-categories">
				<p><strong>Software</strong>:</p>
				<ul>
					<% loop $Software %>
						<li>$Title<% if not $Last %>, <% end_if %></li>
					<% end_loop %>
				</ul>
			</div>
		</div>
	
		<div class="project-content">

			<div class="project-section text-section">
				$Content
			</div>

			<div class="project-section">
				<% loop $WorkSections %>

					<% if $Photo %>
						<figure class="img-section">
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