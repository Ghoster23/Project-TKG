///@description Initializes variables for pausable objects
///@param alarm_count
{
alarm_count = argument0;

for(var i = 0; i < alarm_count; i++){
	alarms[i] = -1;
}

prev_image_speed = 0;

pause_prv_state = 0;
}