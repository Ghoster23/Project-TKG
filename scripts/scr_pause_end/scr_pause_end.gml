///@description Starts enemies after pause
///@param Number of alarms
n = argument0;

for(i = 0; i < n; i++){
	if alarms[i] != -1 {
		alarm[i] = alarms[i];
		alarms[i] = -1;
	}
}
	
if prev_image_speed != 0{
	image_speed = prev_image_speed;
	prev_image_speed = 0;
}