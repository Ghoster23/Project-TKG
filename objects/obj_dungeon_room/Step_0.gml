switch state {
	case 0: //Unloaded
	break;
	
	#region Loading
	case 1:
		scr_room_activate();
		
		state = 2;
	break;
	#endregion
	
	case 2: //Loaded
	break;
	
	case 3: //Activating stuff
		var c = scr_activate_enemies();
		
		if(c != noone){
			state = 4;
		}else {
			cleared = true;
			state   = 5;
		}
	break;
	
	case 4: //Closed
	break;
	
	case 5: //Open
	break;
	
	#region Unloading
	case 6:
		scr_room_deactivate();
		
		state = 0;
	break;
	#endregion
}