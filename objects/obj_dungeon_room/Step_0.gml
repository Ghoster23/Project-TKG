switch state {
	case 0: //Unloaded
	break;
	
	#region Loading
	case 1:
		scr_room_activate();
	break;
	#endregion
	
	case 2: //Open
	break;
	
	case 3: //Activating stuff	
		#region Enemies and state change
		var c = scr_activate_enemies();
		
		scr_mech_toggle_region();
		
		if(c != noone){
			state = 4;
		}else {
			cleared = true;
			scr_map_set_room(-1,-1,3,row,col);
			state   = 2;
		}
		#endregion
		
		scr_mech_toggle_region();
	break;
	
	case 4: //Closed
	break;
	
	#region Unloading
	case 5:
		scr_mech_toggle_region();
	
		scr_room_deactivate();
		
		state = 0;
	break;
	#endregion
}