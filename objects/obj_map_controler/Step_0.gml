//global.map_angle-=0.2;
scr_get_input();

if enter_key{
	global.char=obj_map_controler.selected;
	show_debug_message("char number"+string(global.char));
	room_goto(rm_level);
}

if escape{
	room_goto(rm_menu_1);
}

if right_key or a_right{	
	selected+=1;
	selected=scr_wrap(selected,0,12);
	highltd=ds_list_find_value(ds_places,selected);
	
}else if (left_key or a_left){	
	selected-=1;
	selected=scr_wrap(selected,0,12);
	highltd=ds_list_find_value(ds_places,selected);
}