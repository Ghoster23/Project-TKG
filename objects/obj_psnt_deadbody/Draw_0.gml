v_offset= shader_get_uniform(shdr_palette_swap, "Offset");
v_normal=body_color/256;

palette_swap_sampler = shader_get_sampler_index(shdr_palette_swap,"Palette");
texture_palette = sprite_get_texture(palette_psnt_body,0);
	
shader_set(shdr_palette_swap);

texture_set_stage(palette_swap_sampler, texture_palette);

shader_set_uniform_f(v_offset, v_normal);

draw_self();

shader_reset();

