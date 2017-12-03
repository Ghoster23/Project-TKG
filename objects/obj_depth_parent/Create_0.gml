flash=false;
offset = false;
offs = 0;

upH = shader_get_uniform(sh_outline,"pH");
upW = shader_get_uniform(sh_outline,"pW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_width(sprite_get_texture(sprite_index,0));