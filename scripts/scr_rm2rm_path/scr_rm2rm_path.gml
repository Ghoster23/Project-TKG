{
	if(argument0 == argument1){
		return [];
	}
	
	var current = [1,argument0];
	//show_debug_message("cur" + string(current[1]));
	//show_debug_message("cur calc" + string(global.current_row * 8 + global.current_column));
	var list = ds_list_create();
	var found   = 0;
	var i, j, k;
	
	for(i = 0; i < 64; i++){
		list[| i] = -1;
	}
	
	list[| current[1]] = 404;
	
	var path = [0];
	var adj  = [0];
	var new  = [0];
	
	while(not found){
		k = 0;
		i = 0;
		
		//show_debug_message("sp" + string(global.rm_sp_id));
		
		for(j = 1; j < current[0] + 1; j++){
			//show_debug_message("cur" + string(current[j]));
			adj = scr_room_get_adjacent(current[j]);
			//show_debug_message("adj" + string(adj));

			for(i = 0; i < 4; i++){
				//show_debug_message("i - " + string(i));
				if(adj[i] != -1 and list[| adj[i]] == -1){
					list[| adj[i]] = current[j];
					new[++k]       = adj[i];
					//show_debug_message("adj[i] - " + string(adj[i]));
				}
		
				if(adj[i] == argument1){
					found = true;
					break;
				}
			}
			
			if(found){
				break;
			}
		}
		
		if(found){
			break;
		}
			
		new[0]  = k;
		//show_debug_message("new" + string(new));
		
		current = new;
		new = [0];
	}
	
	var parent  = current[j];
	var child   = adj[i];
	current = argument0;
	
	path[0] = child;
	path[1] = parent;
	k       = 2;
	
	//show_debug_message("child - " + string(child));
	
	while(parent != current){
		child     = parent;
		parent    = ds_list_find_value(list,child);
		path[k++] = parent;
	}

	//show_debug_message(path);
	ds_list_destroy(list);
	show_debug_message("path: " + string(path));
	return path;
}