///@description Add yourself to the enemy list
if(ds_list_find_index(global.act_enemy_list,id) == -1){
	ds_list_add(global.act_enemy_list,id);
}