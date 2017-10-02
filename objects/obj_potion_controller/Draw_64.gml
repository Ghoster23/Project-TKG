if global.potion[1] != c_white {
	draw_sprite_ext(spr_potion_flask,global.potion[0],surface_get_width(application_surface)-32,surface_get_height(application_surface)-16,m,m,0,c_white,1);
	draw_sprite_ext(spr_potion_fluid,global.potion[0],surface_get_width(application_surface)-32,surface_get_height(application_surface)-16,m,m,0,global.potion[1],1);
	
}else {
	draw_sprite_ext(spr_potion_flask,0,surface_get_width(application_surface)-32*m,surface_get_height(application_surface)-16*m,m,m,0,c_white,1);
}