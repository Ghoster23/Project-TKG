///@description Stops enemies for pause
///@param Number of alarms
n = argument0;

for(i = 0; i < n; i++){
	if alarm[i] != -1 {
		alarms[i] = alarm[i];
		alarm[i] = -1;
	}
}
	
if prev_image_speed == 0{
	prev_image_speed = image_speed;
	image_speed = 0;
}