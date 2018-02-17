image_speed = 0;
floor_surface=surface_create(21*32,13*32);
first_time=true;
upH    = shader_get_uniform(sh_outline,"pH");
upW    = shader_get_uniform(sh_outline,"pW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));


