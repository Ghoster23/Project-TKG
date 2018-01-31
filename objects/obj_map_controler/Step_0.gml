//global.map_angle-=0.2;
if keyboard_check_pressed(vk_space){	
	selected+=1;
	selected=scr_wrap(selected,0,8);
	highltd=ds_list_find_value(ds_places,selected);
}

