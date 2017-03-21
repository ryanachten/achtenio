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
				<a class="text-button" href="project.html">Read More</a>
			</div>
		</div>

		<!-- Project gallery tiles -->
		<% loop $Children %>
			<!-- id="project9" -->
			<div class="project-cover" style="background-image:url($HeaderImage.Filename);">
				<div class="rollover">
					<h1>$Title</h1>
					<h2>$Subtitle</h2>
					<p>$Date.Nice | $Client</p>
					<p class="pullquote">$Teaser</p>
					<a class="text-button" href="$Link">Read More</a>
				</div>
			</div>

		<% end_loop %>

		<!-- 
				
		<div id="project8" class="project-cover">
			<div class="rollover">
				<h1>MOSES I</h1>
				<h2>MOSES Album Release</h2>
				<p class="pullquote">Album design and artwork for the self-titled debut album by New Zealand psychedelic band, MOSES.</p>
				<a class="text-button" href="project.html">Read More</a>
			</div>
		</div>
		<div id="project7" class="project-cover">
			<div class="rollover">
				<h1>Wasting</h1>
				<h2>Doprah Album Release</h2>
				<p class="pullquote">'Wasting' album and b-side release artwork for New Zealand electronic act, Doprah.</p>
				<a class="text-button" href="project.html">Read More</a>
			</div>
		</div>
		<div id="project6" class="project-cover">
			<div class="rollover">
				<h1>MOSES II</h1>
				<h2>MOSES Ep Release</h2>
				<p class="pullquote">Design and artwork for the second release, 'MOSES II', from New Zealand psychedelic band, MOSES.</p>
				<a class="text-button" href="project.html">Read More</a>
			</div>
		</div>
		<div id="project5" class="project-cover">
			<div class="rollover">
				<h1>DAotF</h1>
				<h2>VUW Summer Scholarship</h2>
				<p class="pullquote">DAotF is a VUW Summer Scholarship collaboration between Victoria University of Wellington and the National Library of New Zealand exploring the role of 3D media.</p>
				<a class="text-button" href="project.html">Read More</a>
			</div>
		</div>
		<div id="project4" class="project-cover">
			<div class="rollover">
				<h1>Oskelate</h1>
				<h2>Skeleton Visualiser</h2>
				<p class="pullquote">Oskelate is a skeleton music visualiser built in Pure Data (Pd) and Java.</p>
				<a class="text-button" href="project.html">Read More</a>
			</div>
		</div>
		<div id="project3" class="project-cover">
			<div class="rollover">
				<h1>~Soma Vision</h1>
				<h2>Visualiser Interface</h2>
				<p class="pullquote">~SomaVision is a digital hardware interface that combines Pure Data software and Arduino hardware to create a visualiser that is responsive to audio input and user control.</p>
				<a class="text-button" href="project.html">Read More</a>
			</div>
		</div>
		<div id="project2" class="project-cover">
			<div class="rollover">
				<h1>VideoCaos</h1>
				<h2>Visualiser Interface</h2>
				<p class="pullquote">[VideoCaos] is a digital hardware interface that combines Pure Data software and Arduino hardware to create a visualiser that is responsive to audio input and user control.</p>
				<a class="text-button" href="project.html">Read More</a>
			</div>
		</div>
		<div id="project1" class="project-cover">
			<div class="rollover">
				<h1>D_U + GenC</h1>
				<h2>Distortion_Unit + GenCam Interactive</h2>
				<p class="pullquote">The Distortion Unit and Gencam are part of an interactive design and physical computing project aiming to explore video media through audience participation and performative means.</p>
				<a class="text-button" href="project.html">Read More</a>
			</div>
		</div> -->
	</main>

	<section id="behance-hook">
		<p>More <span id="hook-logo">r/a</span> projects can be viewed on Behance:</p>
		<a class="text-button" href="https://www.behance.net/somavisions">View on Behance</a>
	</section>
</body>
	<script src="$ThemeDir/js/work.js"></script> 