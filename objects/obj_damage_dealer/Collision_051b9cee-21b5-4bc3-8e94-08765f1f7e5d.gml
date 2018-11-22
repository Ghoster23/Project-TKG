if(not global.pause){
	if(other.id != owner and instance_exists(other.id)){
		var p = [damage,divi,ohko,kb_amount];
		with other {
			scr_damage_entity(p[0],p[1],p[2],p[3]);
		}
	}
}