/// @description Insert description here
//Get new room and update map
if global.current_column != pr_column or global.current_row != pr_row{
	current_room = scr_room_get();
	
	pr_row = global.current_row;
	pr_column = global.current_column;
}

if global.pause == true and obj_ig_menu_controller.state == "mmap" {
	scr_minimap();
}