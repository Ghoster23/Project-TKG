//draw head
image_index=skin_color;
draw_self();

v_offset= shader_get_uniform(shdr_palette_swap, "Offset");
palette_swap_sampler = shader_get_sampler_index(shdr_palette_swap,"Palette");
texture_palette = sprite_get_texture(palette_psnt_body,0);

v_normal=skin_color/256;
shader_set(shdr_palette_swap);
texture_set_stage(palette_swap_sampler, texture_palette);
shader_set_uniform_f(v_offset, v_normal);
draw_sprite_ext(spr_psnt_f_damage,0,x,y,1,1,-body.phy_rotation,c_white,1); //face
shader_reset();
			
v_normal=hair_color/256;
shader_set(shdr_palette_swap);
texture_set_stage(palette_swap_sampler, texture_palette);
shader_set_uniform_f(v_offset, v_normal);
draw_sprite_ext(eyebrowf_sprite,face,x,y,1,1,-body.phy_rotation,c_white,1); //eyebrows
shader_reset()
			
v_normal=hair_color/256;
shader_set(shdr_palette_swap);
texture_set_stage(palette_swap_sampler, texture_palette);
shader_set_uniform_f(v_offset, v_normal);
draw_sprite_ext(hairf_sprite,hair,x,y,1,1,-body.phy_rotation,c_white,1); //hair
shader_reset();
			
v_normal=skin_color/256;
shader_set(shdr_palette_swap);
texture_set_stage(palette_swap_sampler, texture_palette);
shader_set_uniform_f(v_offset, v_normal);
draw_sprite_ext(spr_e_offhand,0,x,y,-body.side,1,-body.phy_rotation,c_white,1); //hand
shader_reset();