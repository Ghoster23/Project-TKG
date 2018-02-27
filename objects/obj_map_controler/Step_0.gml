//global.map_angle-=0.2;

scr_get_input();

if keyboard_check_pressed(vk_enter){	
	room_goto(rm_level);
}

if(a_left || left_key){
	selected -= 1;
	selected  = scr_wrap(selected,0,8);
	highltd   = ds_list_find_value(ds_places,selected);
}

if(a_right || right_key){
	selected += 1;
	selected  = scr_wrap(selected,0,8);
	highltd   = ds_list_find_value(ds_places,selected);
}