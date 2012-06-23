$(function() {
	$("#sorts").buttonset();

	$("#country").click(function() {
	    $('#display_list').quicksand($('#countries_list li'));
	  });

	$("#name").click(function() {
	    $('#display_list').quicksand($('#names_list li'));
	  });

	$("#style").click(function() {
	    $('#display_list').quicksand($('#styles_list li'));
	  });
    });

