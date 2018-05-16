var ratio = 1 / (1 + abs(z) / 31);

draw_sprite_ext(sprite_index,image_index,
				x, (y - z),
				image_xscale,image_yscale,
				0,c_white,image_alpha);

selfx = x;
selfy = (y - z);

/*if(instance_exists(prev_ball)){
	var bob = prev_ball; 
	otherx  = bob.x - bob.sprite_width;
	othery  = (bob.y - bob.z) + bob.sprite_width;
	testcolor = make_color_rgb(0,174,240);
	draw_line_width_color(selfx, selfy,otherx,othery,5,testcolor,testcolor);
}