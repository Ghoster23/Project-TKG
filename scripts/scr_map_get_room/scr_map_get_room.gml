///@description Returns the array of room info based on room id or coords
///@param (check script)
{
var rid = -1;

switch argument_count {
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