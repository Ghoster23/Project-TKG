///@description Updates the Active Enemies List
{
var trap_list = ds_list_create();

if(room == rm_level){
	//var count = collision_rectangle_list(global.current_column * global.roomwd + 32,global.current_row * global.roomhg + 96,
	//										(global.current_column + 1) * global.roomwd - 32,(global.current_row + 1) * global.roomhg - 32,
	//										obj_trap_parent,false,false,trap_list,false);
}else {
	//var count = collision_rectangle_list(0,0,room_width,room_height,obj_trap_parent,false,false,trap_list,false);
}

if count > 0 { //If enemies were found
	repeat count { //While the list of found enemies isn't empty
		var trap = trap_list[| 0];      //Get the first entry in the list
		ds_list_delete(trap_list,0);     //Remove it from the list
		
		with trap {      //Activate the obj_trap_parent			
			active = true;
		}
	}
	
	ds_list_destroy(trap_list); //Destroy the found enemies list
}
}