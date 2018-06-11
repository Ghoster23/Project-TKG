switch(room){
	case rm_level:
		global.gen = true;
		instance_create_layer(0,0,"Instances",obj_draw_controller);
	break;
	case rm_CH_boss:
		instance_create_layer(0,0,"Instances",obj_draw_controller);
	break;
}