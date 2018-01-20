if(global.p_hp <= 0){
    instance_destroy();
}

if(not global.fullscreen){
	display_set_gui_size(surface_get_width(application_surface),surface_get_height(application_surface));
}