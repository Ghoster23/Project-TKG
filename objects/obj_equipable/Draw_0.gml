draw_self();

if distance_to_object(obj_body) <= 32 {
	draw_sprite(spr_interact,0,x,iy-32);
}

draw_sprite(spr_player_shadow,0,x + 16,iy + 30);