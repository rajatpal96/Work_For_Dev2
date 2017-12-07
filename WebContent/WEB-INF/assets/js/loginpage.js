/**
 * 
 */




/*function titlebar(val)
{
var msg = "Login ---";
var speed = 500;
var pos = val;var msg1 = "***"+msg+" ****";
var msg2 = "------- "+msg+" -------";if(pos == 0)
{
masg = msg1;
pos = 1;
}
else if(pos == 1)
{
masg = msg2;
pos = 0;
}
document.title = masg;
timer = window.setTimeout("titlebar("+pos+")",speed); }
titlebar(0);*/




/*for toggle name to time */
setInterval(function(){ 
   // toggle the class every five second
   setTimeout(function(){
     // toggle back after 1 second
      $('.name_1').toggleClass('hide'); 
     $('.name_2').toggleClass('hide');  
   },1000);

},5000);




//for text slide for comming soon


var TxtType = function(el, toRotate, period) {
    this.toRotate = toRotate;
    this.el = el;
    this.loopNum = 0;
    this.period = parseInt(period, 10) || 2000;
    this.txt = '';
    this.tick();
    this.isDeleting = false;
};

TxtType.prototype.tick = function() {
    var i = this.loopNum % this.toRotate.length;
    var fullTxt = this.toRotate[i];

    if (this.isDeleting) {
    this.txt = fullTxt.substring(0, this.txt.length - 1);
    } else {
    this.txt = fullTxt.substring(0, this.txt.length + 1);
    }

    this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';

    var that = this;
    var delta = 200 - Math.random() * 100;

    if (this.isDeleting) { delta /= 2; }

    if (!this.isDeleting && this.txt === fullTxt) {
    delta = this.period;
    this.isDeleting = true;
    } else if (this.isDeleting && this.txt === '') {
    this.isDeleting = false;
    this.loopNum++;
    delta = 500;
    }

    setTimeout(function() {
    that.tick();
    }, delta);
};

window.onload = function() {
    var elements = document.getElementsByClassName('typewrite');
    for (var i=0; i<elements.length; i++) {
        var toRotate = elements[i].getAttribute('data-type');
        var period = elements[i].getAttribute('data-period');
        if (toRotate) {
          new TxtType(elements[i], JSON.parse(toRotate), period);
        }
    }
    // INJECT CSS
    var css = document.createElement("style");
    css.type = "text/css";
    css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff}";
    document.body.appendChild(css);
};




/*for clock*/


/* date */
function clock(){

//Save the times in variables

var today = new Date();

var hours = today.getHours();
var minutes = today.getMinutes();
var seconds = today.getSeconds();


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
document.getElementById("clock").innerHTML = (hours + ":" + minutes + ":" + seconds + meridiem);

}


setInterval('clock()', 10);
