/* Things to do on room change */
if(global.room_change){
	//Check path to the special room if potion is active
	if(room == rm_level and global.status[3,0]){
		//path = scr_rm2rm_path(global.current_row * 8 + global.current_column,global.rm_sp_id);

	}
	
}

/* Add enemies to active enemy list */
if((room == rm_level and obj_view.stopped and global.n_room)){
	enemy = obj_enemy_parent;
	scr_get_active_enemies();
	
	enemy = obj_flying_enemy_parent;
	scr_get_active_enemies();
	
	global.n_room = false;
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