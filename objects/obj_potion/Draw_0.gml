draw_sprite_ext(spr_potion_fluid,image_index,x,y,1,1,0,color,1);

draw_self();

if distance_to_object(global.body) <= 32 {
	draw_sprite(spr_interact,0,x,y-32);
}