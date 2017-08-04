scr_get_input();
//pick up sword
if distance_to_object(obj_body)<=20 and interact_key{
	instance_create_layer(obj_body.x,obj_body.y,layer,obj_sword);
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
	global.p_satk -= 5;
	instance_destroy();
}