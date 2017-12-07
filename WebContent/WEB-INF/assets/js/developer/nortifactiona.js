function viewGraph(){
$('.column').css('height','0');
$('.table_income_info tbody tr').each(function(index) {
var month = $(this).children('td').eq(1).text();
var ha = $(this).children('td').eq(6).text();
$('#col'+index).animate({height: ha}, 1500).html("<div>"+month+"<br>"+ha+"</div>");
});
}
$(document).ready(function(){
viewGraph();
});