/// @description Insert description here
// You can write your code in this editor
//scr_fall();

if place_meeting(x,y,global.body) and global.p_stats[stats.hp] < global.p_stats[stats.mhp]{
	global.p_stats[stats.hp]+=image_index;
	if global.p_stats[stats.hp] > global.p_stats[stats.mhp] {
		global.p_stats[stats.hp] = global.p_stats[stats.mhp];
	}
	instance_destroy();
	
}

if(not global.pause){
	size+=0.5;
	var s = sin(size) * 0.1;
	image_xscale = 1 + s;
	image_yscale = 1 + s;
}