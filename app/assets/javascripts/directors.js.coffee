# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
        $("#sorts").buttonset();
          
        $("#country").click ->
                $('#display_list').quicksand($('#countries_list li'));


	$("#name").click ->
                $('#display_list').quicksand($('#names_list li'));


	$("#style").click ->
                $('#display_list').quicksand($('#styles_list li'));

