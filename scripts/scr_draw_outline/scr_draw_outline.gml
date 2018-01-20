{
	if(argument_count > 0){
		image_blend = argument[0];
	}

	shader_set(sh_outline);
	shader_set_uniform_f(upH,texelH);
	shader_set_uniform_f(upW,texelW);

	if(argument_count > 0){
		draw_self();
	}
	
	image_blend = c_white;
	
	draw_self();

	shader_reset();
}