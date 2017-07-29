/// @description Insert description here
//Get new room and update map
scr_get_input();

if global.current_column != pr_column or global.current_row != pr_row and obj_view.stopped{
	current_room = scr_room_get();
	
	pr_row = global.current_row;
	pr_column = global.current_column;
}

if os_mmap_key and alarm[0] == -1{
	alarm[0] = 3;
}