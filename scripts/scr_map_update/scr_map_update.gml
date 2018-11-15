///Updates Map when new rooms are discovered
{
if(!instance_exists(obj_map_controller)){ 
	scr_show_error(1,true,["scr_map_update","obj_map_controller"]);
	return;
}

switch argument_count {
	case 1:
		var rid = argument0;
	break;
	case 2:
		var rid = argument0 * obj_map_controller.dg_col + argument[1];
	break;
	default:
		scr_show_error(0,true,["scr_map_update",4,5]);
		return;
	break;
}

with(obj_map_controller){
	scr_map_set_room(-1,-1,2,rid);

	#region Adjacent Rooms
	var pos  =  0;
	var info = -1;
	
	for(var j = 0; j < 4; j++){
		switch j {
			case 0: pos = rid + 1;      break;
			case 1: pos = rid - dg_col; break;
			case 2: pos = rid - 1;      break;
			case 3: pos = rid + dg_col; break;
		}
				
		if(0 <= pos and pos <= dg_space){
			info = dungeon_layout[pos]
			
			if(info != -1 and info[2] == 0){
				var drs = info[0];
				var inv = (j + 2) mod 4;
				
				if(drs[inv]){
					scr_map_set_room(-1,-1,1,pos);
				}
			}
		}
	}
	#endregion
}
}