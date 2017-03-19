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