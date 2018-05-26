/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_exists(wind)){
	wind.x = x;
	wind.y = y - 6;
	visible = false;
}else {
	visible = true;
}