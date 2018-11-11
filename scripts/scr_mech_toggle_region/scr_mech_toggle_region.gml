///@description Turns on the mechanisms in a room
{
var ix = 0;
var iy = 0;
var fx = 0;
var fy = 0;

var mech_list = ds_list_create();

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
	var count = collision_rectangle_list( ix, iy, fx, fy, obj_mechanism_parent,false,false, mech_list, false);
}else {
	var count = collision_rectangle_list(0,0,room_width,room_height,obj_mechanism_parent,false,false, mech_list,false);
}

if count != noone { //If mechanisms were found
	repeat count {  //While the list of found mechanisms isn't empty
		var mech = mech_list[| 0];   //Get the first entry in the list
		ds_list_delete(mech_list,0); //Remove it from the list
		with mech {	on = !on; }
	}
}

ds_list_destroy(mech_list); //Destroy the found mechanisms list
}