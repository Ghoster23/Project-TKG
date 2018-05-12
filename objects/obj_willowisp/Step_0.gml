if(not global.pause){
	scr_pause_end(1);
	if(distance_to_object(obj_beacon)){
		if(instance_exists(obj_beacon)){
			scr_define_path(self, obj_beacon);
		}

		path = global.ai_path;

		scr_move_entity(point_direction(x,y,path_get_point_x(path,1),path_get_point_y(path,1)),1);
	}else {
		part_emitter_burst(global.ps_if,em,global.pt_willowisp,20);
		instance_destroy();
	}

	part_emitter_region(global.ps_if,em,x,x,y,y,pt_shape_circle,ps_distr_linear);
	part_emitter_burst(global.ps_if,em,global.pt_willowisp,5);
}else{
	scr_pause_start(1);
}