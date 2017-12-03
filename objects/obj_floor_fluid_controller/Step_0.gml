/// @description Fluid effects
if(not global.pause){
	scr_pause_end(2);
	
	if(global.room_change and ds_exists(global.fluid_grid,ds_type_grid)){
		ds_grid_clear(global.fluid_grid,0);
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