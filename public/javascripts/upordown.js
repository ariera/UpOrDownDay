$(document).ready(function(){
	$(".option").click(function(){
		var link = $(this).find('a');
		window.location=link.attr('href')
	})
	
	$("#history li").tipsy();
	
});