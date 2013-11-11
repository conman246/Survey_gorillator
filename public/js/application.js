$(document).ready(function() {
  $("#create_survey_link").click(function(event){
  	event.preventDefault();
  	$(this).hide();

  	$.get('/create_survey', function(form){
  		$(".container").append(form);
  	});
  });

  $(".container").on("submit", '#new_survey', function(event){
  	event.preventDefault();

  	var url = $(this).attr('action');
  	var data = $(this).serialize();

  	$.post(url, data, function(response){
  		$("#new_stuff").append(response);

  	})
  });
});


