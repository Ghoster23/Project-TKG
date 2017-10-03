draw_self();

draw_sprite_ext(spr_potion_fluid,image_index,x,y,1,1,0,color,1);

if distance_to_object(global.body) <= 8 {
	draw_sprite(spr_interact,0,x-16,y-48);
}