/// @description Insert description here
// You can write your code in this editor
scr_fall();

if place_meeting(x,y,global.body) {
	global.coins++;
	global.total_coins++;
	instance_destroy();
	
}