/*-------------------------------*/
/*use this code to draw psnt body*/
/*-------------------------------*/
if (self.object_index == obj_psnt_body){

	v_offset= shader_get_uniform(shdr_palette_swap, "Offset");
	v_normal=body_color/256;

	palette_swap_sampler = shader_get_sampler_index(shdr_palette_swap,"Palette");
	texture_palette = sprite_get_texture(palette_psnt_body,0);
	
	shader_set(shdr_palette_swap);

	texture_set_stage(palette_swap_sampler, texture_palette);

	shader_set_uniform_f(v_offset, v_normal);

	draw_self();

	shader_reset();
	
/*-------------------------------*/
/*use this code to draw psnt head*/
/*-------------------------------*/
} else if (self.object_index == obj_psnt_head){
	
	
	//draw head
	draw_self();

	v_offset= shader_get_uniform(shdr_palette_swap, "Offset");
	palette_swap_sampler = shader_get_sampler_index(shdr_palette_swap,"Palette");
	texture_palette = sprite_get_texture(palette_psnt_body,0);

	//draw face and hair
	switch facing {
	    case "left": //Left
			v_normal=skin_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
		    draw_sprite_ext(faces_sprite,face,x,y,1,1,0,c_white,1); //face
			shader_reset();
			
			v_normal=hair_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
		    draw_sprite_ext(eyebrows_sprite,face,x,y,1,1,0,c_white,1); //eyebrows
			shader_reset()
			
			v_normal=hair_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
			draw_sprite_ext(hairs_sprite,hair,x,y,1,1,0,c_white,1); //hair
			shader_reset();
			
			v_normal=skin_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
			draw_sprite_ext(spr_e_offhand,0,x,y,1,1,0,c_white,1); //hand
			shader_reset();
	        break;
  
	    case "up": //Up
		
			v_normal=hair_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
			draw_sprite_ext(hairb_sprite,hair,x,y,1,1,0,c_white,1); //hair
			shader_reset();
			
			v_normal=skin_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
			draw_sprite_ext(spr_e_offhand,0,x,y,-1,1,0,c_white,1); //hand
			shader_reset();
	        break;
		
	    case "right": //Right
		
			v_normal=skin_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
	        draw_sprite_ext(faces_sprite,face,x,y,-1,1,0,c_white,1); //face
			shader_reset();
			
			v_normal=hair_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
		    draw_sprite_ext(eyebrows_sprite,face,x,y,-1,1,0,c_white,1); //eyebrows
			shader_reset()
			
			v_normal=hair_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
			draw_sprite_ext(hairs_sprite,hair,x,y,-1,1,0,c_white,1); //hair
			shader_reset();
			
			v_normal=skin_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
			draw_sprite_ext(spr_e_offhand,0,x,y,1,1,0,c_white,1); //hand
			shader_reset();
			
	        break;
		
	    case "down": //Down
		
			v_normal=skin_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
	        draw_sprite_ext(facef_sprite,face,x,y,1,1,0,c_white,1); //face
			shader_reset();
			
			v_normal=hair_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
		    draw_sprite_ext(eyebrowf_sprite,face,x,y,1,1,0,c_white,1); //eyebrows
			shader_reset()
			
			v_normal=hair_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
			draw_sprite_ext(hairf_sprite,hair,x,y,1,1,0,c_white,1); //hair
			shader_reset();
			
			v_normal=skin_color/256;
			shader_set(shdr_palette_swap);
			texture_set_stage(palette_swap_sampler, texture_palette);
			shader_set_uniform_f(v_offset, v_normal);
			draw_sprite_ext(spr_e_offhand,0,x,y,1,1,0,c_white,1); //hand
			shader_reset();
			
	        break;
	}

	//shader_reset();
	
/*---------------------------------------*/
/*use this code to draw psnt melee weapon*/
/*---------------------------------------*/
} else if (self.object_index == obj_e_melee){
	
	//draw head
	draw_self();
		
	//hand that holds weapon
	v_offset= shader_get_uniform(shdr_palette_swap, "Offset");
	palette_swap_sampler = shader_get_sampler_index(shdr_palette_swap,"Palette");
	texture_palette = sprite_get_texture(palette_psnt_body,0);
		
	v_normal=skin_color/256;
	shader_set(shdr_palette_swap);
	texture_set_stage(palette_swap_sampler, texture_palette);
	shader_set_uniform_f(v_offset, v_normal);
	draw_sprite_ext(spr_e_hand,0,x,y,image_xscale,1,image_angle,c_white,1);
	shader_reset();
		
}
