if(ds_exists(global.ds_grid_skills,ds_type_grid)){
	ds_grid_destroy(global.ds_grid_skills);
}

if(ds_exists(global.ds_grid_tl_n_wep,ds_type_grid)){
	ds_grid_destroy(global.ds_grid_tl_n_wep);
}

if(ds_exists(global.ds_grid_items,ds_type_grid)){
	ds_grid_destroy(global.ds_grid_items);
}

if(ds_exists(global.ds_grid_tl_n_wep,ds_type_grid)){
	ds_grid_destroy(global.ds_grid_tl_n_wep);
}

if(ds_exists(global.ds_grid_loot_table,ds_type_grid)){
	ds_grid_destroy(global.ds_grid_loot_table);
}

if(ds_exists(global.loot_table_ind,ds_type_list)){
	ds_list_destroy(global.loot_table_ind);
}