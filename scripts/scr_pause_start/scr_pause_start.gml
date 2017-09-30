///@description Stops enemies for pause
///@param Number of alarms
n = argument0;

scr_alarms_pause(n);
	
if prev_image_speed == 0{
	prev_image_speed = image_speed;
	image_speed = 0;
}