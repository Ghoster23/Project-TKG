draw_sprite_ext(spr_boat_trail,0,x,y,1,1,angle_off,c_white,1);

for (var i = 0; i < image_number; i++){
	draw_sprite_ext(sprite_index, i, x, y - i, image_xscale, image_yscale, angle_off, c_white, image_alpha);
}
			
			