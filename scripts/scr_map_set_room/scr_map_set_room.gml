///@description Returns the array of room info based on room id or coords
///@param check_script
{
if(!instance_exists(obj_map_controller)){ 
	scr_show_error(1,true,["scr_map_set_room","obj_map_controller"]);
	return;
}

var rid = -1;

var r_spr = argument[0];
var r_typ = argument[1];
var r_stt = argument[2];

switch argument_count {
	default:
		scr_show_error(0,false,["scr_map_set_room",4,5]);
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