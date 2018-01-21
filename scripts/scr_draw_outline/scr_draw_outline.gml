{
	shader_set(sh_outline);
	shader_set_uniform_f(upH,texelH);
	shader_set_uniform_f(upW,texelW);
	
	image_blend = c_white;
	
	draw_self();

	shader_reset();
}