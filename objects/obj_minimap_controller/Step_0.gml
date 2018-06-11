/// @description Insert description here
//Get new room and update map
gui_WD = display_get_gui_width();
gui_HG = display_get_gui_height();

if global.key_active[key_id.mmap] and alarm[0] == -1{
	alarm[0] = 3;
}