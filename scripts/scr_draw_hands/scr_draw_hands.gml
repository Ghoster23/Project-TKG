{
#region Shader start
v_offset = shader_get_uniform(shdr_palette_swap, "Offset");
v_normal = color/256;

palette_swap_sampler = shader_get_sampler_index(shdr_palette_swap,"Palette");
texture_palette      = sprite_get_texture(spr_color_swap_palette,1);

shader_set(shdr_palette_swap);

texture_set_stage(palette_swap_sampler, texture_palette);

shader_set_uniform_f(v_offset, v_normal);
#endregion

switch wep_state {
	case 1: //Idle
		image_index = body.spr_side;
		draw_self();
	break;
	
	case 0: //Holding
		if(one_handed){
			//Hand that holds the weapon
			if((!hand or body.spr_side != 2) and (hand or body.spr_side != 0)){
				draw_sprite_ext(sprite_index, 5, weapon.x, weapon.y, 1, 1, weapon.image_angle, c_white, 1);
			}
			
			#region Offhand
			if((global.char == 4 and body.len == 0) or global.char != 4){
				switch body.spr_side {
					case 0:
						if(!hand){
							draw_sprite(sprite_index, 5, x, y + 1);
						}
					break;
					
					case 1:
						draw_sprite(sprite_index, 5, x + 8 * (hand == 0 ? 1 : -1), y + 1);
					break;
					
					case 2:
						if(hand){
							draw_sprite(sprite_index, 5, x, y + 1);
						}
					break;
					
					case 3:
						draw_sprite(sprite_index, 5, x + 8 * (hand == 0 ? -1 : 1), y + 1);
					break;
				}
			}
			#endregion
			
			shader_reset();
			return;
		}else {
			switch(weapon.item){
				default:
					image_index = 4;
					image_angle = weapon.image_angle;
					draw_self();
				break;
					
				case tl_n_wep.bow:
					draw_sprite_ext(spr_bow_hands, weapon.image_index, 
									weapon.x, weapon.y, 1, weapon.image_yscale, weapon.image_angle, c_white, 1);
				break;
			}
		}
	break;
}

shader_reset();
}