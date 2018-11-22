if(not global.pause and state == 2){	
	if(object_index != other.object_index and instance_exists(other.id)){
		var p = [ 3 * stat[stats.atk] * (1 + modf[stats.atk]), stats.def, ohko, 50];
		with other {
			scr_damage_entity(p[0],p[1],p[2],p[3]);
		}
	}
}