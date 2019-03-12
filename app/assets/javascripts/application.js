
//
//= require jquery.min
//= require jquery-ui.min
//= require wow
//= require bootstrap.min
//= require bootstrap-select.min
//= require jquery.bootstrap-touchspin
//= require magnific-popup
//= require waypoints-min
//= require counterup.min
//= require imagesloaded
//= require masonry-3.1.4
//= require masonry.filter
//= require owl.carousel
//= require dz.carousel
//= require custom
//= require tilt.jquery
//= require raindrops
//= require templete
//= require particles
//= require activestorage
//= require turbolinks
//= require jquery_ujs


$(document).on('ready page:load', function () {
  $('.navbar-nav>li>a').on('click', function(){
      $('.navbar-collapse').collapse('hide');
  });
  
  $("#searchName").on("keyup", function() {
  	var value = $("#searchName").val().toLowerCase();
  	$('.student-item label').filter(function() {
  		$(this).parent().toggle($(this).text().toLowerCase().indexOf(value) > -1)
  	});
  });
});
