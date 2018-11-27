for(var i = 0; i < ds_list_size(sub_windows); i++){
	var wnd = sub_windows[| i];
	
	if(!instance_exists(wnd)){
		ds_list_delete(sub_windows,i);
		i--;
	}
}

for(var i = 0; i < ds_list_size(draw_wnds); i++){
	var wnd = draw_wnds[| i];
	
	if(!instance_exists(wnd)){
		ds_list_delete(draw_wnds,i);
		i--;
	}
}