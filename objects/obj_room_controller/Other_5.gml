if(variable_global_exists(global.act_enemy_list) && ds_exists(ds_type_list,global.act_enemy_list)){
	ds_list_destroy(global.act_enemy_list);
}

instance_destroy();