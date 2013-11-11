$(document).ready(function() {
  $("#create_survey_link").click(function(event){
  	event.preventDefault();
  	$(this).hide();
    $("#userportal").hide();
    $("#user_portal_h1").hide();
    $("#survey_list_link").hide();
    $("#stats_link").hide();
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


  $(".container").on("submit", '#new_survey', function(event){
  	event.preventDefault();

  	var url = $(this).attr('action');
  	var data = $(this).serialize();

  	$.post(url, data, function(response){
  		$("#new_stuff").append(response);

  	})
  });
});


