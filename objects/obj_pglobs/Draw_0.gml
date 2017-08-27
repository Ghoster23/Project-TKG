/// @description Insert description here
// You can write your code in this editor
if not global.flight {
	if instance_exists(global.body) {
		draw_sprite(spr_player_shadow,0,global.body.x,global.body.y);
	}
	
}else {
	if instance_exists(global.body) {
		draw_sprite(spr_player_shadow_fl,0,global.body.x,global.body.y);
	}
	
}