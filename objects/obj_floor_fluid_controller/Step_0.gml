/// @description Fluid effects
if(not global.pause){
	scr_pause_end(2);
	//show_debug_message(active);
	
	if(global.room_change and ds_exists(global.fluid_grid,ds_type_grid)){
		ds_grid_clear(global.fluid_grid,0);
		
		for(var i = 0; i < x_cells * y_cells; i++){
			active[i] = 0;
	
		}
		
		n_room = true;
	}
	
	if(room == rm_level and obj_view.stopped and n_room){
		n_room = false;
		
		for(var i = 0; i < y_cells; i++){
			for(var j = 0; j < x_cells; j++){
				var inst = instance_place(i * 32 + 16, j * 32 + 16, obj_solid_parent);
				
				if(inst != noone){
					active[j,i] = 2;
				}else {
					var inst = instance_place(i * 32 + 16, j * 32 + 16, obj_below_ground_parent);
					
					if(inst != noone){
						active[j,i] = 2;
					}
				}
			}
		}
	}
	
	for(var i = 0; i < ds_list_size(global.act_enemy_list); i++){
		var inst = ds_list_find_value(global.act_enemy_list,i);
		
		if(object_get_name(inst.object_index) == "obj_slm_cr"){
			
			var x0 = (inst.phy_position_x mod global.roomwd) div 32 - 1;
			var y0 = (inst.phy_position_y mod global.roomhg) div 32 - 3;
			
			show_debug_message("x0: " + string(x0) + " y0: " + string(y0));
			
			if(x0 < 0){ x0 = 0;}
			if(y0 < 0){ y0 = 0;}
			
			active[x0,y0] = 1;
		}
	}
	
	//Update fluid type with which player is colliding
	if instance_exists(global.body) {
		if(room == rm_level){
			val = ds_grid_get(global.fluid_grid,(global.body.x mod global.roomwd) div 4,(global.body.y mod global.roomhg + 11) div 4);
		}else {
			val = ds_grid_get(global.fluid_grid,(global.body.x mod room_width) div 4,(global.body.y mod room_height + 11) div 4);
		}
	
	}

	//Determine fluid type
	if val != 0{
		//Slime creep
		if val < 30{
			type = 1;
		
		}
	
	}else {
		type = 0;
	
	}

	//If contact is maintained run alarm
	if pr_type == type and alarm[0] == -1 {
		alarm[0] = 9;
	
	}

	//If it isn't reset it
	if pr_type != type {
		pr_type = type;
		alarm[0] = -1;
	
	}
	
}else {
	scr_pause_start(2);
	
}