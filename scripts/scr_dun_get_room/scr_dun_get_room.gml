///@description Get room info from dungeon
///@param check_script
{
var rg = argument0;

switch argument_count {
	case 2:
		var rid = argument1;
	break;
	case 3:
		var rid = argument1 * obj_map_controller.dg_col + argument[2];
	break;
	default:
		return;
	break;
}

return obj_map_controller.ds_dungeon_list[| rg].rooms[rid];
}