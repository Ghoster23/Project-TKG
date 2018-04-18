if(not go and start and alarm[0] == -1){
    
    if ds_list_find_index(global.act_enemy_list,id) == -1 {
		ds_list_add(global.act_enemy_list,id);
	}
	
    alarm[0] = 1 * room_speed;
}