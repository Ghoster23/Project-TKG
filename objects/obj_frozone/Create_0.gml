event_inherited();

offset = true;
offs   = 24;

shadow = instance_create_layer(x,y+offs,layer,obj_shadow);

once = false;

image_speed = 0;

switch room {
	default:
		tx = room_width/2;
		ty = room_height/2;
	break;
	
	case rm_level:
		tx = global.roomwd * global.current_col / 2;
		ty = global.roomhg * global.current_row    / 2;
	break;
}