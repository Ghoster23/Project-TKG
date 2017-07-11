///@description Damage the player
if state == 1 and global.p_inv == false and e_hp > 0{
	global.p_hp -= e_atk div global.p_def;
	global.p_inv = true;
	
}