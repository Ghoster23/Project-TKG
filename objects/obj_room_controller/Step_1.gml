/*pr_row = global.current_row;
pr_column = global.current_column;



if(pr_column != global.current_column or pr_row != global.current_row){
	global.room_change = true;
	
}*/

if(room == rm_level){
global.room_change = false;

if(not collision_rectangle(global.current_column      * global.roomwd - 24,
					       global.current_row         * global.roomhg - 32,
					      (global.current_column + 1) * global.roomwd + 24,
					      (global.current_row    + 1) * global.roomhg + 64,
					       global.body, true, false)){
						   
	global.room_change = true;
	show_debug_message("change")
}

if(global.room_change){
	/// Get current Player room
	global.current_column = global.body.phy_position_x div global.roomwd;
	global.current_row    = global.body.phy_position_y div global.roomhg;
}
}