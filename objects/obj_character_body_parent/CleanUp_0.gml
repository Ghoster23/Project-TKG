if(ds_exists(ds_type_list,status_list)){
	ds_list_destroy(status_list);
}

array_copy(global.p_stats,0,stat,0,stats.count);