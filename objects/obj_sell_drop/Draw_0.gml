/// @description Insert description here
// You can write your code in this editor

draw_self();

if collision_circle(x+16,y+16,24,global.body,true,false) {
	draw_set_font(font0);
	draw_text(x+8,y-32,string(cost));
}