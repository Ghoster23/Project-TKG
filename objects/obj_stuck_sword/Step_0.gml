if not global.pause {
	image_speed = 1;
	
	//pick up sword
	if distance_to_object(global.body)<=20 and global.key_active[key_id.interact]{
		instance_create_layer(global.body.x,global.body.y,layer,obj_sword);
		if instance_exists(obj_spell_caster){
			with obj_spell_caster{
				instance_destroy();
			}
		}
		if instance_exists(obj_sword_aoe){
			with obj_sword_aoe{
				instance_destroy();
			} 
		}
		global.p_stats[stats.satk] -= 5;
		instance_destroy();
	}
} else {
	image_speed = 0;
}