if(ds_exists(draw_wnds,ds_type_list)){
	ds_list_destroy(draw_wnds);
}

if(ds_exists(sub_windows,ds_type_list)){
	while(!ds_list_empty(sub_windows)){
		var wnd = sub_windows[| 0];
		ds_list_delete(sub_windows,0);
		
		with wnd {
			scr_window_close();
		}
	}
	
	ds_list_destroy(sub_windows);
}