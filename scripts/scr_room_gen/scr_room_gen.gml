///@param gx
///@param gy
///@param type
///@param alt_optional
{
if(argument_count < 3 or argument_count > 4){
	scr_show_error(0,"scr_room_gen",[3,4]);
}

var gx = argument[0];
var gy = argument[1];

var type = argument[2];
var _typ = type;

var alt = -1;
if(argument_count == 4){
	alt = argument[3];
}

var roomwd = global.roomwd;
var roomhg = global.roomhg;

var hcells = roomwd div 32;
var vcells = roomhg div 32;

switch type {
	case "base":
	default:
	break;
	
	case 15:
		_typ = "base";
	break;
}

var gr = scr_load_room_to_grid(_typ,alt);

//Construct Room
scr_construct_room( gx, gy, gr);

switch type {
	default:
	break;
	
	//item room
	case 15:
		_rm_insts[_rm_count] = instance_create_layer(gx+(roomwd/2)-16,gy-16+(roomhg/2),"Instances",obj_pedestal);
		_rm_count++;
	break;
}

//Decorate Room
scr_decorate_room( gx, gy, type, gr);

//delete the ds grid and we are done :)
ds_grid_destroy(gr);
}