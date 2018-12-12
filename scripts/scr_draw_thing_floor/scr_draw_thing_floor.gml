{
	
xoffset = sprite_get_width(sprite_index)/2 - (sprite_width) / 2;
yoffset = (sprite_get_height(sprite_index)/2 - (sprite_height) / 2) + 30*(1-image_yscale);
	
//draw_sprite_ext(spr_player_shadow, 0, x + 16, y + 16, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index,image_index, x+xoffset, y+yoffset, image_xscale, image_yscale, image_angle, c_white, image_alpha);

//physics_draw_debug();
}
