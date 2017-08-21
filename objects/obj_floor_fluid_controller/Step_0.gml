/// @description Fluid effects

//Update fluid type with which player is colliding
if instance_exists(obj_body) {
	val = ds_grid_get(global.fluid_grid,(obj_body.x mod global.roomwd) div 4,(obj_body.y mod global.roomhg + 11) div 4);
	
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