///@description Damage the entity
if(variable_instance_exists(other,"owner")){
	if(other.owner == id){
		var mine = true;
	}else {
		var mine = false;
	}
}else {
	var mine = false;
}

if(not damaged and 
   not immune  and 
   not inv     and
   not mine    and
   instance_exists(other)){
	
	if(is_descended(other.object_index,obj_entity_parent)){
		var dmg = ceil(other.damage * (other.stat[other.mult] * (1 + other.modf[other.mult])));
	}else {
		var dmg = other.damage;
	}
	
	var  kb = other.kb_amount;
	var  dv = other.divi;
	var  xx = other.x;
	var  yy = other.y;
	var   d = point_direction(xx,yy,x,y);
	
	//Knockback
	if(kb != 0){ physics_apply_impulse(x,y,lengthdir_x(kb,d),lengthdir_y(kb,d)); }
	
	if(dmg > 0){	
		//Spew blood
		scr_blood(xx,yy,object_get_name(other.object_index));
	
		#region Deal Damage
		if(stat[stats.arm] == 0){
			if(!other.ohko){
				dmg = ceil(dmg / (stat[dv] * (1 + modf[dv])));
			}else {
				dmg = 0;
			}
		}else {
			stat[stats.arm]--;
			dmg = 0;
		}
		
		stat[stats.hp] -= dmg;
		#endregion
	
		if(stat[stats.hp] <= 0){ dead = true; }
		
		//Screen shake
		global.shake = 5;
		
		//Show damage
		var pop = instance_create_layer(x,y,layer,obj_damage_done_pop);
		pop.dmg = dmg;
	}
	
	#region Destroy none piercing projectiles
	if(object_get_parent(other.object_index) == obj_projectile_parent){
		with other {
			if(not piercing){
				destroyed = true;
			}
		}
	}
	#endregion
}