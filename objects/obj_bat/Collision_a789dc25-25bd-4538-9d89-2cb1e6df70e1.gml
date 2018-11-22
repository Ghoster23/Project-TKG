if(not global.pause){	
	if(type != other.type and instance_exists(other.id)){
		var p = [ 2 * stat[stats.atk] * (1 + modf[stats.atk]), stats.def, ohko, 10];
		with other {
			scr_damage_entity(p[0],p[1],p[2],p[3]);
		}
	}
}