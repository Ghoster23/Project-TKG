///@params charge_time
{
if(argument0 == -1){ image_index = 0; }

var amnt = image_number / (argument0 * room_speed);

image_index = scr_approach(image_index, image_number - 1, amnt);

if(image_index == image_number - 1){ chargeup = true; }
}