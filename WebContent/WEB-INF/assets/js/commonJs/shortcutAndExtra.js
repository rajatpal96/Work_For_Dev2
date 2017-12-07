/**
 * 
 */


document.onkeyup = function(e) 
	{
	  if (e.which == 77) 
	  {
	    /*alert("M key was pressed");*/
	  } 
	  else if (e.ctrlKey && e.which == 66)
	  {
	    /*alert("Ctrl + B shortcut combination was pressed");*/  
	  } 
	  else if (e.ctrlKey && e.altKey && e.which == 76 || e.which == 108) 
	  {
	    /*alert("Ctrl + Alt + L l shortcut combination was pressed");*/
	    $("#popup").modal("show");  
        countdown( "countdown", 1, 1 );
		countdown( "countdown2", 100, 0 );  
	  } 
	  else if (e.ctrlKey && e.altKey && e.which == 83 || e.which == 115) 
	  {
	    /*alert("Ctrl + Alt + s shortcut combination was pressed");*/
	    /*$("#top_search_div").show();*/
	     $("#search_popup").modal("show");  
	    
	  }
	  else if (e.ctrlKey && e.altKey && e.shiftKey && e.which == 83 || e.which == 115) 
	  {
	    /*alert("Ctrl + Alt + Shift + s shortcut combination was pressed");*/
	  }
	};
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
/*page refersh js	*/
	
	
	function refresh() {

	    setTimeout(function () {
	        location.reload()
	    }, 10);
	}
	
	
	
	
	
	
/*	page back js*/
	
	function goBack() {
	    window.history.back();
	}
	
/*page forward js*/
	
	function goForward() {
	    window.history.forward();
	}
	
	
	/*ctrl + u disible*/

	jQuery(document).bind("keyup keydown", function(e){
    if(e.ctrlKey && e.keyCode == 85 || e.keyCode== 117){
      /*  alert('fine');*/
        return false;
    }
});
	