///@description Stops enemies for pause
///@param Number of alarms
if(!pause_prv_state){
	pause_prv_state = 1;
	
	var n = argument0;

	scr_alarms_pause(n);
	
	if prev_image_speed == 0{
		prev_image_speed = image_speed;
		image_speed = 0;
	}
}