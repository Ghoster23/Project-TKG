/// @description Insert description here
//Get new room and update map
scr_get_input();

if global.room_change {
	current_room = scr_room_get();
	
}

if os_mmap_key and alarm[0] == -1{
	alarm[0] = 3;
}