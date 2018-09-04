///@description Updates the Active Enemies List
{
var enemy_list = ds_list_create();

if(room == rm_level){
	//var count = collision_rectangle_list(global.current_column * global.roomwd + 32,global.current_row * global.roomhg + 96,
	//	(global.current_column + 1) * global.roomwd - 32,(global.current_row + 1) * global.roomhg - 32,obj_enemy_parent,
	//	false,false,enemy_list,false);
}else {
	//var count = collision_rectangle_list(0,0,room_width,room_height,obj_enemy_parent,false,false,enemy_list,false);
}

if count != noone { //If enemies were found
	repeat count { //While the list of found enemies isn't empty
		var enemy = enemy_list[| 0];      //Get the first entry in the list
		ds_list_delete(enemy_list,0);     //Remove it from the list
		
		with enemy {      //Activate the obj_enemy_parent
			alarm[0] = 1 * room_speed;
			
			scr_add_to_active_list();
		}
	}
	
	ds_list_destroy(enemy_list); //Destroy the found enemies list
}
}