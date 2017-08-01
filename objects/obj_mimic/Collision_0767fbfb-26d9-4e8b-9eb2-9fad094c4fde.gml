///@description Damage the player
if state == 1 and e_hp > 0 and not atk_cd{
	scr_damage_player(1);
	alarm[3] = 0.2 * room_speed;
}