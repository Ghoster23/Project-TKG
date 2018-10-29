if(ds_exists(global.ds_grid_skills,ds_type_grid)){
	ds_grid_destroy(global.ds_grid_skills);
}

if(ds_exists(global.ds_grid_tl_n_wep,ds_type_grid)){
	ds_grid_destroy(global.ds_grid_tl_n_wep);
}

if(ds_exists(global.act_enemy_list,ds_type_list)){
	ds_grid_destroy(global.act_enemy_list);
}