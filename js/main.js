$(document).ready(function(){


 $("#owl-example").owlCarousel({
    // Most important owl features
    items : 4,
    loop: true,
    pagination : true,
    paginationSpeed : 1000,
    navigation : true,
    navigationText : ["",">"],
    slideSpeed : 800,
 });

	$("#navigation").sticky({
		topSpacing : 75,
	});

/*
	$('#nav').onePageNav({
		currentClass: 'current',
		changeHash: false,
		scrollSpeed: 15000,
		scrollThreshold: 0.5,
		filter: '',
		easing: 'easeInOutExpo'
	});

     $('#top-nav').onePageNav({
         currentClass: 'active',
         changeHash: true,
         scrollSpeed: 1200
    });
*/
//Initiat WOW JS
    new WOW().init();

});
