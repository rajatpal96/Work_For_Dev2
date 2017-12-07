/**
 * 
 */

$(function(){
	switch(menu)
	{
	case 'dash':
			$('#dash').addClass('active');
			break;
	case 'notif':
		$('#dash').addClass('active');
		break;
	case 'adduser':
		
		$('#org').addClass('active');
		$('#org').addClass('open');
		$('#adduser').addClass('active');
		break;
	default:
		$('#dash').addClass('active');
		break;
	}
});
