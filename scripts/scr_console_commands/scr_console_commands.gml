command_list[0]="restart";
command_help[0]="restart() -> restarts the room";

command_list[1]="quit";
command_help[1]="quit() -> quits the game";

command_list[2]="get_mouse_coords";
command_help[2]="get_mouse_coords() -> returns the coords of the mouse in the room";

command_list[3]="clear";
command_help[3]="clear() -> clears the console";

command_list[4]="instance_get_id_closest";
command_help[4]="instance_get_id_closest(object_name) -> returns id of closest (to mouse) object with given name";

command_list[5]="create_instance";
command_help[5]="create_instance(x,y,object_name)-> spawns instance with given name at given coords";

command_list[6]="repeat";
command_help[6]="repeat(n,command)-> runs command given n times";

command_list[7]="list_macros";
command_help[7]="list_macros() -> prints a list of all pre-programmed macros";

command_list[8]="create_instance_at_cursor";
command_help[8]="create_instance_at_cursor(object_name)-> spawns instance at cursor";

command_list[9]="pause";
command_help[9]="pause()-> pauses and unpauses the game";

command_list[10]="killall_active";
command_help[10]="killall_active()-> kills all active enemies";

command_list[11]="entity_stat_set";
command_help[11]="entity_stat_set(instance_id/object_name, stat, value)-> changes a stat of an entity or entities of a type\n Use info(stats) for details.\n";

command_list[12]="info";
command_help[12]="info(keyword)-> provides information on a topic, provide ? to list keywords\n";

command_list[13]="create_item_at_cursor";
command_help[13]="create_item_at_cursor(type,item,amount)-> creates the specified item at the cursor.\n";

command_list[14]="list_items";
command_help[14]="list_items(type)-> lists the items of a given type.\n";

command_list[15]="activate_enemy";
command_help[15]="activate_enemy(instance_id)-> Activates an enemy.\n";

command_list[16]="instance_get_var";
command_help[16]="instance_get_var(instance_id,variable_name)-> Gets the value of a variable in an instance.\n";

command_list[17]="instance_set_var";
command_help[17]="instance_set_var(instance_id,variable_name,value)-> Sets the value of a variable in an instance.\n";

command_list[18]="instance_track_var";
command_help[18]="instance_track_var(instance_id,variable_name)-> Creates a window that tracks the instance variable if none exists or adds it to an existing tracker";

command_list[19]="debug_overlay";
command_help[19]="debug_overlay() -> toggles the display of the debug overlay";

number_of_commands = array_length_1d(command_list);




