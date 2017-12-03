if type=="slime"{
	image_blend=make_color_rgb(72,130,10);
	shader_set(sh_white);
	draw_self();
	shader_reset();	
}
else{
	draw_self();
}

