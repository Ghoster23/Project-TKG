{
	var ratio = 1 / (1 + abs(z) / 31);
	draw_sprite_ext(spr_player_shadow,0,x,y,ratio,ratio,0,c_white,1);
	draw_sprite_ext(sprite_index,image_index,x ,y - z,1,1,skullrot,c_white,image_alpha);
	//draw_text(x+30,y,string(z))
}