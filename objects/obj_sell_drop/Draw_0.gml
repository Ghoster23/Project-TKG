/// @description Insert description here
// You can write your code in this editor

draw_self();

if collision_circle(x+16,y+16,24,global.body,true,false) {
	draw_set_font(font0);
	draw_text(x+8+off_x,y-32+off_y,string(cost));
}

if sprite_index == spr_potion_flask{
	draw_sprite_ext(spr_potion_fluid,image_index,x,y,1,1,0,color,1);
}