/// @description Insert description here
// You can write your code in this editor
if state == 0 {
	if collision_circle(x,y,24,global.body,true,false) {
		draw_sprite(spr_interact,0,x,y-32);
	}
}