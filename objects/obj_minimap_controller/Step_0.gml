/// @description Insert description here
//Get new room and update map
scr_get_input();

gui_WD = display_get_gui_width();
gui_HG = display_get_gui_height();

if os_mmap_key and alarm[0] == -1{
	alarm[0] = 3;
}