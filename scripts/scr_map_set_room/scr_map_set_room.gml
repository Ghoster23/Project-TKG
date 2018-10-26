///@description Returns the array of room info based on room id or coords
///@param check_script
{
var rid = -1;

var r_spr = argument0;
var r_typ = argument1;
var r_stt = argument2;

switch argument_count {
	case 4:
		rid = argument3;
	break;
	
	case 5:
		var r = argument3;
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