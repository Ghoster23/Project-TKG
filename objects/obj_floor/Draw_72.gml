#region Gen
if (first_time==true && (room == rm_level or room == rm_lvl_editor_test)){

	surface_set_target(floor_surface);
	draw_rectangle_color(0,0,surface_get_width(floor_surface),surface_get_height(floor_surface),dirt_color,dirt_color,dirt_color,dirt_color,false);

	for (var i=0; i<13; i++)
	{
	    for (var j=0; j<21; j++){
			draw_set_alpha(1);
			 switch ds_grid_get(generator.floor_grid,gxtile+j,gytile+i){
				case "green": break;
			
				case "blue": 
					tx = gxtile+j;
					ty = gytile+i;
					var ind = scr_autotile_floor("blue");
					
					outline_start(2,make_color_rgb(117,81,63),spr_tile_grass,ind,8);
					draw_sprite_ext(spr_tile_grass,ind,j*32,i*32,1,1,0,c_white,1);
					outline_end();
					
					break;
				
				case "red" : 
					tx = gxtile+j;
					ty = gytile+i;
					var ind = scr_autotile_floor("red");
					
					outline_start(2,make_color_rgb(117,81,63),spr_tile_stone,ind,8);
					draw_sprite_ext(spr_tile_stone,ind,j*32,i*32,1,1,0,c_white,1);
					outline_end();
					
					break;
				
				default: show_debug_message("tile does not exist") break;
			 }
			
		}
	}
	floor_sprite=sprite_create_from_surface(floor_surface,0,-32,21*32,14*32,false,false,32,95);
	sprite_index=floor_sprite;
	surface_reset_target();
	first_time=false;
}
else{
	draw_self();
}
#endregion