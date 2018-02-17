if (first_time==true){

	surface_set_target(floor_surface);

	for (var i=0; i<13; i++)
	{
	    for (var j=0; j<21; j++){
		
			 switch ds_grid_get(obj_gen_controller.floor_grid,gxtile+j,gytile+i){
				case "green": break;
			
				case "blue": 
					tx = gxtile+j;
					ty = gytile+i;
					shader_set(sh_outline);
					shader_set_uniform_f(upH,texelH);
					shader_set_uniform_f(upW,texelW);
					draw_sprite_ext(spr_tile_grass,scr_autotile_floor("blue"),j*32,i*32,1,1,0,make_color_rgb(117,81,63),1) ;
					shader_reset();
					break;
				
				case "red" : 
					tx = gxtile+j;
					ty = gytile+i;
					shader_set(sh_outline);
					shader_set_uniform_f(upH,texelH);
					shader_set_uniform_f(upW,texelW);
					draw_sprite_ext(spr_tile_stone,scr_autotile_floor("red"),j*32,i*32,1,1,0,make_color_rgb(117,81,63),1) ;
					shader_reset();
					break;
				
				default: show_debug_message("tile does not exist") break;
			 }
			
		}
	}
	floor_sprite=sprite_create_from_surface(floor_surface,0,0,21*32,13*32,false,false,21*16,13*16);
	sprite_index=floor_sprite;
	surface_reset_target();
	first_time=false;
}
else{
	draw_self();
}
