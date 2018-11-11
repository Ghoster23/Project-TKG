switch state {
	case 0: ///Make rooms
		if(rm_count > rm_gened){
			if(rm == noone || rm.state == 1){
				rm = scr_create_room(start_col * global.roomwd, start_row * global.roomhg);
			
				rm_gened++;
			}
		}else {
			state++;
		}
	break;
	
	case 1: ///Wait for rooms
		if(!rm_gened){
			state++;
		}
	break;
	
	case 2: ///Conclude generation and Register
		with dungeon {		
			rooms    = other.gen_rooms;
			sp_rooms = other.sp_places;
		}
		
		instance_destroy();
	break;
}