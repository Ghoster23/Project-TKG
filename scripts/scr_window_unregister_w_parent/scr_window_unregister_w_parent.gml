{
if(parent != noone){
	with(parent){
		if(ds_exists(sub_windows,ds_type_list)){
			ds_list_delete(sub_windows,ds_list_find_index(sub_windows,other.id));
		}
	}
}
}