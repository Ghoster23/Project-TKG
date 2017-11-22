event_inherited();
image_speed=0;
allow = true;
thrust=false;
off=0;
swing="no";
//image_yscale = -1*image_yscale;

upH = shader_get_uniform(sh_outline,"pH");
upW = shader_get_uniform(sh_outline,"pW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_width(sprite_get_texture(sprite_index,0));

prev_image_speed = 0;
for(i = 0; i < 3; i++){
	alarms[i] = -1;
}

em = part_emitter_create(global.ps_if);
em_ = part_emitter_create(global.ps);

amount = 0;

l = 0;

charged = false;