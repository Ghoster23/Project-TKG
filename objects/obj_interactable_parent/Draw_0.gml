in_range = false;

if distance_to_object(global.body) <= dis {
	draw_sprite(spr_interact,0,x+16,y-48);
	
	draw_script = scr_draw_outline;
	in_range    = true;
	
}else {
	draw_script = null;
	
}