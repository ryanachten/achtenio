var projects = document.getElementsByClassName("project-cover");
projectFadeIn(projects);
rollover(projects);
carousel(projects);

function projectFadeIn(projects){	
	for (var i=0; i < projects.length; i++){
		// var curProjectId = '#' + projects[i].getAttribute('id');
		var curObj = projects[i];
		// console.log(curObj);
		$(curObj).delay(1000*i).fadeTo("slow", 1);
	}
}

function rollover(coverImages){
	for (var i = 0; i < coverImages.length; i++) {
		coverImages[i].addEventListener("mouseenter", function(){
			var coverRoll = this.children[0];
			coverRoll.classList.toggle('rollover-active');
		});
		coverImages[i].addEventListener("mouseleave", function(){
			var coverRoll = this.children[0];
			coverRoll.classList.toggle('rollover-active');
		});
	}
}

function carousel(projects){
	var bgUrls = [];
	var rollovers = [];

	for (var i=0; i < projects.length; i++){
		// var curProjectId = '#' + projects[i].getAttribute('id');
		bgUrls.push( $(projects[i]).css('background-image'));
		rollovers.push(projects[i].children[0]);
	}

	var projCounter = 0;
	var header = $(".project-header");
	var timer = setInterval(changeProject, 7000);

	function changeProject(){
		
		header.fadeTo("slow", 0, "swing", function(){
			changeText();
			header.css('background-image', bgUrls[projCounter]);
			header.fadeTo("slow", 1);
		});
		
		if (projCounter == bgUrls.length-1){
			console.log('reset projCounter');
			return projCounter = 0;	
		}else{
			return projCounter++;
		}	
	}
	function changeText(){
		var projHeader = rollovers[projCounter].children[0].innerText;
		var projSubhead = rollovers[projCounter].children[1].innerText;
		var projDescript = rollovers[projCounter].children[2].innerText;

		var headerDescript = $(".project-header-descript");
		headerDescript.children('h1').text(projHeader);
		headerDescript.children('h2').text(projSubhead);
		headerDescript.children('p').text(projDescript);
	}
}
