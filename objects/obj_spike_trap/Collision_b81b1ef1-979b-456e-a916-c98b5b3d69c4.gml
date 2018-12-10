if(not global.pause and state != 0){	
	if(type != other.type and instance_exists(other.id)){
		var p = [ 15, stats.def, false, 30];
		with other {
			scr_damage_entity(p[0],p[1],p[2],p[3]);
		}
	}
}