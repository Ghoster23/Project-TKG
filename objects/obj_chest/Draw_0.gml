/// @description Insert description here
// You can write your code in this editor
if closed {
	if collision_circle(x+16,y+16,24,global.body,true,false) {
		draw_sprite(spr_interact,0,x,y-32);
	}
}