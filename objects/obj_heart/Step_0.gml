/// @description Insert description here
// You can write your code in this editor
scr_fall();

if place_meeting(x,y,global.body) {
	global.p_hp++;
	if global.p_hp > global.p_maxhp {
		global.p_hp = global.p_maxhp;
	}
	instance_destroy();
	
}