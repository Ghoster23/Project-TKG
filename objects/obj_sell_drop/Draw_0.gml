/// @description Insert description here
// You can write your code in this editor
if collision_circle(x+16,y+16,24,global.body,true,false) {
	draw_set_font(font0);
	draw_text(x,y-32,string(cost));
}