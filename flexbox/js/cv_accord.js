/*
 Based on simple jQuery Accordion by Brenden Palmer
 https://codepen.io/brenden/pen/Kwbpyj
*/

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
        // $this.parent().parent().find('li .inner').removeClass('show');
        // $this.parent().parent().find('li .inner').slideUp(350);
        element.next().toggleClass('show');
        element.next().slideToggle(350);
    }
}