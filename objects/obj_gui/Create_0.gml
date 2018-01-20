scr_unique_inst();

image_speed = 0;

if(global.fullscreen){
	display_set_gui_maximise();
}else {
	display_set_gui_size(surface_get_width(application_surface),surface_get_height(application_surface));
}

o_v = -1;

n_potion = false;