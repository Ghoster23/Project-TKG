if global.n_room {
	enemy_list = collision_rectangle_list(global.current_column * global.roomwd + 32,global.current_row * global.roomhg + 96,
		(global.current_column + 1) * global.roomwd - 32,(global.current_row + 1) * global.roomhg - 32,obj_enemy_parent,false,false);
	
	if enemy_list != noone {
		
		while not ds_list_empty(enemy_list) {
			enemy = enemy_list[| 0];
			ds_list_delete(enemy_list,0);
			
			if ds_list_find_index(global.act_enemy_list,enemy) == -1 {
				ds_list_add(global.act_enemy_list,enemy);
				show_debug_message(object_get_name(enemy.object_index));
				
				with enemy {
					start = true;
				
				}
			}
			
		}
		
		ds_list_destroy(enemy_list);
		global.lock = true;
	}
	
	enemy_list = collision_rectangle_list(global.current_column * global.roomwd + 32,global.current_row * global.roomhg + 96,
		(global.current_column + 1) * global.roomwd - 32,(global.current_row + 1) * global.roomhg - 32,obj_flying_enemy_parent,false,false);
	
	if enemy_list != noone {
		
		while not ds_list_empty(enemy_list) {
			enemy = enemy_list[| 0];
			ds_list_delete(enemy_list,0);
			
			if ds_list_find_index(global.act_enemy_list,enemy) == -1 {
				ds_list_add(global.act_enemy_list,enemy);
				show_debug_message(object_get_name(enemy.object_index));
				
				with enemy {
					start = true;
				
				}
			}
			
		}
		
		ds_list_destroy(enemy_list);
		global.lock = true;
	}
	
	global.n_room = false;
	
}

if global.lock == true and ds_list_size(global.act_enemy_list) == 0 and not global.n_room{
	global.lock = false;
	
}