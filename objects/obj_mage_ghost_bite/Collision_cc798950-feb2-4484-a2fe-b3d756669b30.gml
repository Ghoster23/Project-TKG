/// @description Insert description here
// You can write your code in this editor
with(other){
	physics_apply_impulse(x,y,lengthdir_x(500,other.owner.player_dir),lengthdir_y(500,other.owner.player_dir));
}