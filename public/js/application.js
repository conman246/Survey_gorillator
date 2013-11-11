$(document).ready(function() {
  $("#create_survey_link").click(function(event){
  	event.preventDefault();
  	$(this).hide();

  	$.get('/create_survey', function(form){
  		$(".container").append(form);
  	});
  });
});




