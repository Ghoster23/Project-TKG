///@description Updates the Active Enemies List

var enemy_list = collision_rectangle_list(global.current_column * global.roomwd + 32,global.current_row * global.roomhg + 96,
		(global.current_column + 1) * global.roomwd - 32,(global.current_row + 1) * global.roomhg - 32,enemy,false,false);
	
if enemy_list != noone { //If enemies were found
		
	while not ds_list_empty(enemy_list) { //While the list of found enemies isn't empty
		enemy = enemy_list[| 0];          //Get the first entry in the list
		ds_list_delete(enemy_list,0);     //Remove it from the list
			
		/*if ds_list_find_index(global.act_enemy_list,enemy) == -1 {   //If the enemy is not in the Active Enemy List
			ds_list_add(global.act_enemy_list,enemy);                //Add the enemy to the list
			show_debug_message(object_get_name(enemy.object_index));
			show_debug_message(enemy);
				
			
		}*/
		
		with enemy {      //Activate the enemy
			start = true;
				
		}
			
	}
		
	ds_list_destroy(enemy_list); //Destroy the found enemies list
}