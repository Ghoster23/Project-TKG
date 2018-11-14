///@description Returns the array of room info based on room id or coords
///@param check_script
{
var rid = -1;

var r_spr = argument[0];
var r_typ = argument[1];
var r_stt = argument[2];

switch argument_count {
	default:
		show_error("scr_map_set_room requires 4 or 5 arguments.",false);
		return;
	break;
	
	case 4:
		rid = argument[3];
	break;
	
	case 5:
		var r = argument[3];
		var c = argument[4];
		
		rid = r * obj_map_controller.dg_col + c;
	break;
}

if(rid != -1 && (r_spr == -1 || r_typ == -1 || r_stt == -1)){
	var info = scr_map_get_room(rid);
	
	if(info == -1){ return; }
	
	if(r_spr == -1){ r_spr = info[0]; }
	if(r_typ == -1){ r_typ = info[1]; }
	if(r_stt == -1){ r_stt = info[2]; }
}

if(rid != -1){
	obj_map_controller.dungeon_layout[rid] = [r_spr,r_typ,r_stt];
}
}