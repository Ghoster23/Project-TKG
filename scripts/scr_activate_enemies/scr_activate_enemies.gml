///@description Updates the Active Enemies List
{
if(room == rm_level){
	var enemy_list = collision_rectangle_list(global.current_column * global.roomwd + 32,global.current_row * global.roomhg + 96,
		(global.current_column + 1) * global.roomwd - 32,(global.current_row + 1) * global.roomhg - 32,obj_enemy_parent,false,false);
}else {
	var enemy_list = collision_rectangle_list(0,0,room_width,room_height,obj_enemy_parent,false,false);
}

if enemy_list != noone { //If enemies were found
	while not ds_list_empty(enemy_list) { //While the list of found enemies isn't empty
		var enemy = enemy_list[| 0];      //Get the first entry in the list
		ds_list_delete(enemy_list,0);     //Remove it from the list
		
		with enemy {      //Activate the obj_enemy_parent
			start = true;
		}
	}
	
	ds_list_destroy(enemy_list); //Destroy the found enemies list
}
}