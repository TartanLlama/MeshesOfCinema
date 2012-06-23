$(function() {
    $('.search_field').click(function() {
	if ($(this).val() == 'Search...')
	    $(this).val('');
    });

    $('.search_field').blur(function() {
	if ($(this).val() == '')
	    $(this).val('Search...');
    });
});


