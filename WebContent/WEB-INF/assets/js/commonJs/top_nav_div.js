/**
 * 
 */

/*for list roll desin*/

$('.rolldown-list li').each(function () {
  var delay = ($(this).index() / 4) + 's';
  $(this).css({
    webkitAnimationDelay: delay,
    mozAnimationDelay: delay,
    animationDelay: delay
  });
});

$('#topList').click(function () {
  $('#myList').removeClass('rolldown-list');
  setTimeout(function () {
    $('#myList').addClass('rolldown-list');
  }, 1);
});







/*full screan js*/
(function($, window, document){
	  'use strict';
	  if( !screenfull ) return;
	  var Selector = '[data-toggle="fullscreen"]';
	  $(document).on('click', Selector, function (e) {
	      e.preventDefault();
	      if (screenfull.enabled) {			        
	        screenfull.toggle();			        
	        // Switch icon indicator
	        if(screenfull.isFullscreen)
	          $(this).children('em').removeClass('fa-expand').addClass('fa-compress');
	        else
	          $(this).children('em').removeClass('fa-compress').addClass('fa-expand');
	      } else { /*Ignore or do something else*/ }
	  });
	}(jQuery, window, document));








/*now time js*/
/* date */
function clock(){

//Save the times in variables

var today = new Date();

var hours = today.getHours();
var minutes = today.getMinutes();
var seconds = today.getSeconds();



var weekday = new Array(7);
weekday[0] =  "Sunday";
weekday[1] = "Monday";
weekday[2] = "Tuesday";
weekday[3] = "Wednesday";
weekday[4] = "Thursday";
weekday[5] = "Friday";
weekday[6] = "Saturday";

var day = weekday[today.getDay()];


//Set the AM or PM time

if (hours >= 12){
meridiem = " PM";
}
else {
meridiem = " AM";
}


//convert hours to 12 hour format and put 0 in front
if (hours>12){
	hours = hours - 12;
}
else if (hours===0){
	hours = 12;	
}

//Put 0 in front of single digit minutes and seconds

if (minutes<10){
	minutes = "0" + minutes;
}
else {
	minutes = minutes;
}

if (seconds<10){
	seconds = "0" + seconds;
}
else {
	seconds = seconds;
}


document.getElementById("clock").innerHTML = (hours + ":" + minutes + ":" + seconds + meridiem+ "    " +day);

}
setInterval('clock()', 1);

















/*Auto logout timer js*/
function countdown( elementName, minutes, seconds )
{
    var element, endTime, hours, mins, msLeft, time;

    function twoDigits( n )
    {
        return (n <= 9 ? "0" + n : n);
    }

    function updateTimer()
    {
        msLeft = endTime - (+new Date);
        if ( msLeft < 1000 ) {
            element.innerHTML = "countdown's over!";
            aleret1();
        } else {
            time = new Date( msLeft );
            hours = time.getUTCHours();
            mins = time.getUTCMinutes();
            element.innerHTML = (hours ? hours + ':' + twoDigits( mins ) : mins) + ':' + twoDigits( time.getUTCSeconds() );
            setTimeout( updateTimer, time.getUTCMilliseconds() + 500 );
        }
    }

    element = document.getElementById( elementName );
    endTime = (+new Date) + 1000 * (60*minutes + seconds) + 500;
    updateTimer();
}












/*session expire*/
function aleret1()
{
	alert("Your Session Expire Please Login Again !");
}







/*for lock model*/

$(document).ready(function() {
    $("#popup").modal({
        show: false,
        backdrop: 'static'
    });
    
    $("#lock_btn_top").click(function() {
       $("#popup").modal("show");  
       countdown( "countdown", 1, 1 );
countdown( "countdown2", 100, 0 );           
    });
});



