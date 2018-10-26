if(variable_global_exists("act_enemy_list") && ds_exists(ds_type_list,global.act_enemy_list)){
	ds_list_destroy(global.act_enemy_list);
}

/*if room == rm_level and ds_exists(global.ds_roomgrid, ds_type_grid){
	ds_grid_destroy(global.ds_roomgrid);
}*/

instance_destroy();