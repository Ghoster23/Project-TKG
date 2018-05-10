scr_damage_entity();

if(stat[stats.hp] <= 0){
	dead   = true;
	killer = other.object_index;
}