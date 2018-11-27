{
if(drawer != noone){	
	with(drawer){
		if(ds_exists(draw_wnds,ds_type_list)){
			ds_list_delete(draw_wnds, ds_list_find_index(draw_wnds,other.id));
		}
	}
}
}