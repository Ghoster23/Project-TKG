/* Things to do on room change */
if(global.room_change){
	//Check path to the special room if potion is active
	if(room == rm_level and global.status[3,0]){
		//path = scr_rm2rm_path(global.current_row * 8 + global.current_column,global.rm_sp_id);

	}
	
}

if(room == rm_lvl_editor_test){
	global.current_column = 0;
	global.current_row    = 0;
}

if keyboard_check_released(ord("P")) {
	var size = ds_list_size(global.act_enemy_list);
	global.n_room = true;
	show_debug_message(size);
	for(var i = 0; i < size; i++){
		show_debug_message(object_get_name(global.act_enemy_list[| i].object_index));
	}
}