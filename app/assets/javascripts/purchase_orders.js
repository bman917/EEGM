
$(document).ready(function(){

$('#add_phone').on("click", function(){
	entry = $('div.phone_entry:first');

	//x = "<div class=\"phone_entry\"><label>Phone</label><br><input id=\"phone[2]\" type=\"text\"><br></div>";
	//alert(entry.html());
	$('.phones').append("<div class='phone_entry'>" + entry.html() + "</div>");
	len = $('div.phones input').length;

	$('div.phones label:last').text("Phone "+ len);

	$('div.phones input:last').attr("name","phone["+len+"]");
	//entry2 = $('div.phones input:last');
	//alert(entry2.attr("id"));

	});	

	

});