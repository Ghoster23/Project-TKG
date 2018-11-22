///@description Starts enemies after pause
///@param Number of alarms
if(pause_prv_state){
	pause_prv_state = 0;
	
	var n = argument0;

	scr_alarms_unpause(n);
	
	if(prev_image_speed != 0){
		image_speed = prev_image_speed;
		prev_image_speed = 0;
	}
}