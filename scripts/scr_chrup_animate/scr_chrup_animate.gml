///@params charge_time
{
if(argument0 == -1){ 
	image_index = 0;
	return;
}

var amnt = image_number / (argument0 * room_speed);
var targ = image_number - 1;

image_index = scr_approach(image_index, targ, amnt);

return image_index/targ;
}