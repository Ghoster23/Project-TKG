///@description Returns the array of room info based on room id or coords
///@param (check script)
{
if(!instance_exists(obj_map_controller)){ 
	scr_show_error(1,true,["scr_map_get_room","obj_map_controller"]);
	return;
}

var rid = -1;

switch argument_count {
	default:
		scr_show_error(0,false,["scr_map_get_room",1,2]);
	break;
	
	case 1:
		rid = argument0;
	break;
	
	case 2:
		var r = argument0;
		var c = argument[1];
		
		rid = r * obj_map_controller.dg_col + c;
	break;
}

if(rid != -1){
	return obj_map_controller.dungeon_layout[rid];
}
}