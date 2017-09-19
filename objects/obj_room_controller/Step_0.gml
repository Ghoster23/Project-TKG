if global.n_room and obj_view.stopped{
	global.n_room = false;
	
	enemy = obj_enemy_parent;
	scr_get_active_enemies();
	enemy = obj_flying_enemy_parent;
	scr_get_active_enemies();
	
}

if ds_list_size(global.act_enemy_list) == 0 {
	global.lock = false;
	
}else {
	global.lock = true;
	
}

if keyboard_check_released(ord("P")) {
	var size = ds_list_size(global.act_enemy_list);
	show_debug_message(size);
	for(var i = 0; i < size; i++){
		show_debug_message(string(global.act_enemy_list[| i]));
	}
}