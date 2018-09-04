if(not global.pause){
	if(player_owned){
		key[0] = global.key_active[key_id.skill_1];
		key[1] = global.key_active[key_id.skill_2];
	}else {
		key[0] = owner.key[0];
		key[1] = owner.key[1];
	}
}