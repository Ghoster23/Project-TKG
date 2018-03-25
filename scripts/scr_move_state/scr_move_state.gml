/// @description scr_move_state
scr_get_input();

//get the length
if (xaxis == 0 and yaxis == 0 and alarm[0] == -1) {
	len = 0;
} else {
	len = global.spd;
}

