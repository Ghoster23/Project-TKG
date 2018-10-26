///@description Updates the Active traps List
{
var ix = 0;
var iy = 0;
var fx = 0;
var fy = 0;

var trap_list = ds_list_create();

if(argument_count == 0){
	ix = global.current_col * global.roomwd + 32;
	iy = global.current_row * global.roomhg + 32;
	fx = (global.current_col + 1) * global.roomwd - 32;
	fy = (global.current_row + 1) * global.roomhg - 32;
	
}else if(argument_count == 4){
	ix = argument[0];
	iy = argument[1];
	fx = argument[2];
	fy = argument[3];
}

if(room == rm_level){
	var count = collision_rectangle_list( ix, iy, fx, fy, obj_trap_parent,false,false, trap_list, false);
}else {
	var count = collision_rectangle_list(0,0,room_width,room_height,obj_trap_parent,false,false, trap_list,false);
}

if count != noone { //If traps were found
	repeat count { //While the list of found traps isn't empty
		var trap = trap_list[| 0];      //Get the first entry in the list
		ds_list_delete(trap_list,0);     //Remove it from the list
		
		with trap {      //Activate the obj_trap_parent
			active = true;
		}
	}
}

ds_list_destroy(trap_list); //Destroy the found traps list
}