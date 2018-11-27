{
if(instance_exists(obj_window_controller)){
	drawer = obj_window_controller;
	with(drawer){
		if(ds_exists(draw_wnds,ds_type_list)){
			ds_list_add(draw_wnds, other.id);
		}
	}
}
}