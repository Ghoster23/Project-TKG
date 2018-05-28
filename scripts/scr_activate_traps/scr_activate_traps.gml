///@description Updates the Active Enemies List
{
if(room == rm_level){
	var trap_list = collision_rectangle_list(global.current_column * global.roomwd + 32,global.current_row * global.roomhg + 96,
		(global.current_column + 1) * global.roomwd - 32,(global.current_row + 1) * global.roomhg - 32,obj_trap_parent,false,false);
}else {
	var trap_list = collision_rectangle_list(0,0,room_width,room_height,obj_trap_parent,false,false);
}

if trap_list != noone { //If enemies were found
	while not ds_list_empty(trap_list) { //While the list of found enemies isn't empty
		var trap = trap_list[| 0];      //Get the first entry in the list
		ds_list_delete(trap_list,0);     //Remove it from the list
		
		with trap {      //Activate the obj_trap_parent
			alarm[0] = 1 * room_speed;
			
			active = true;
		}
	}
	
	ds_list_destroy(trap_list); //Destroy the found enemies list
}
}