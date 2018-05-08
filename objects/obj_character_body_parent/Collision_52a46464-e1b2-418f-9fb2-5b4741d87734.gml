scr_damage_entity();

if(stat[stats.hp] <= 0){
	global.dead   = true;
	global.killer = other.object_index;
}