///@description Check statuses
if(not global.pause and go){
	scr_status_check();
}

alarm[1] = 0.5 * room_speed;