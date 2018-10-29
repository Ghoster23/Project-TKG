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
		//Enemies
		var c = scr_activate_enemies();
		
		surface_set_target(global.fluid_surface);
		draw_clear_alpha(c_black,0);
		surface_reset_target();
		
		if(c != noone){
			state = 4;
			
		}else {
			cleared = true;
			
			state   = 2;
		}
	break;
	
	case 4: //Closed
	break;
	
	#region Unloading
	case 5:
		scr_room_deactivate();
		
		state = 0;
	break;
	#endregion
}