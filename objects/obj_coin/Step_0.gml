/// @description Insert description here
// You can write your code in this editor
scr_fall();

if place_meeting(x,y,global.body) {
	global.coins++;
	global.total_coins++;
	instance_destroy();
	
}

if(global.pause and image_speed != 0){
	prev_image_speed = image_speed;
	image_speed = 0;
}

if(not global.pause and prev_image_speed != 0){
	image_speed = prev_image_speed;
	prev_image_speed = 0;
}