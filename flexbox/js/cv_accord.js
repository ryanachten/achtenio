/*
 Based on simple jQuery Accordion by Brenden Palmer
 https://codepen.io/brenden/pen/Kwbpyj
*/

$(document).ready(function(){
    var width = $(window).width(); 
    console.log('width: ' + width);
    
    if (width < 500){
        console.log('close accordion');
    }else{
        // TODO: the function below is a hack. Fix properly
        $('.toggle').each(function(){
            var $this = $(this);
            var curId = $this.next().attr('id');
            if (curId !== "skills-container"){
                console.log(curId);
                 toggleAccordian($this);
            }
        });
    }
})

// Click event
$('.toggle').click(function(e) {
  	e.preventDefault();
  
    var $this = $(this);
    toggleAccordian($this);
});

function toggleAccordian(element){
    if (element.next().hasClass('show')) {
            element.next().removeClass('show');
            element.next().slideUp(350);
    } else {
        // $this.parent().parent().find('.inner').removeClass('show');
        // $this.parent().parent().find('.inner').slideUp(350);
        element.next().toggleClass('show');
        element.next().slideToggle(350);
    }
}