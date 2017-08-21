///@description Damage the player
if state != 1 {
	scr_damage_player(0,10,global.p_def);

	instance_destroy();
}