/// @description Insert description here
//Get new room and update map
if global.current_column != pr_column or global.current_row != pr_row and obj_view.stopped{
	current_room = scr_room_get();
	
	pr_row = global.current_row;
	pr_column = global.current_column;
}