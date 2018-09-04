if(obj_player_hud.visible){
	m = obj_player_hud.m;
	
	gui_HG = obj_player_hud.gui_HG;
}

if(not global.pause and global.key_active[key_id.mmap] and alarm[0] == -1){
	alarm[0] = 3;
}