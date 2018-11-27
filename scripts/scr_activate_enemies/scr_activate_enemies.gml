///@description Updates the Active Enemies List
{
var ix = 0;
var iy = 0;
var fx = 0;
var fy = 0;

var enemy_list = ds_list_create();

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
	var count = collision_rectangle_list( ix, iy, fx, fy, obj_enemy_parent,false,false, enemy_list, false);
}else {
	var count = collision_rectangle_list(0,0,room_width,room_height,obj_enemy_parent,false,false, enemy_list,false);
}

if count != noone { //If enemies were found
	repeat count { //While the list of found enemies isn't empty
		var enemy = enemy_list[| 0];      //Get the first entry in the list
		ds_list_delete(enemy_list,0);     //Remove it from the list
		
		with enemy {      //Activate the obj_enemy_parent
			alarm[0] = 0.5 * room_speed;
			scr_add_to_active_list();
		}
	}
}

ds_list_destroy(enemy_list); //Destroy the found enemies list

return count;
}