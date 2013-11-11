$(document).ready(function() {
  $("#create_survey_link").click(function(event){
  	event.preventDefault();
  	$(this).hide();

  	$.get('/create_survey', function(form){
  		$(".container").append(form);
  	});
  });










  // Front end eye-candy stuff


  // Show login form on click
  $("#login_logout").click(function() {
    console.log("clicked");
    $(".homecontent").animate({height:"100%"});
    $(".loginform").slideDown(1000);
  });
  $("#loginbutton").click(function() {
    console.log("clicked2");
    $(".homecontent").animate({height:"0%"});
    $(".loginform").slideUp(1000);

  });

});




