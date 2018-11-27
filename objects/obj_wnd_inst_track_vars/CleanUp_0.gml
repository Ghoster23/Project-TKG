if(tr_vars != -1 and ds_exists(tr_vars,ds_type_list)){
	ds_list_destroy(tr_vars);
	tr_vars = -1;
}

if(tr_vals != -1 and ds_exists(tr_vals,ds_type_list)){
	ds_list_destroy(tr_vals);
	tr_vals = -1;
}