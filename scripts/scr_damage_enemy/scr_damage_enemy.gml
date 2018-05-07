///@description Damage the enemy
if(not damaged and instance_exists(other) and 
	not ((other.object_index == obj_e_arrow || other.object_index == obj_e_swing) and other.owner == id)){
	var dmg = other.damage;
	var ml  = other.mult;
	var dv  = other.divi;
	
	var kb  = other.kb_amount;
	
	var xx = other.x;
	var yy = other.y;
	var d  = point_direction(xx,yy,x,y);
	
	//Spew blood
	scr_blood(xx,yy,object_get_name(other.object_index));
	
	//Destroy none piercing projectiles
	if(object_get_parent(other.object_index) == obj_projectile_parent){
		with other {
			if(not piercing){
				destroyed = true;
			}
		}
	}
	
	//Damage
	if(global.status[statuses.ohko,0] == 0){
		stat[stats.hp] -= round(dmg * (global.p_stats[ml] div stat[dv]));
	}else {
		stat[stats.hp] = 0;
	}
	
	//Knockback
	if(kb != 0){		
		physics_apply_impulse(x,y,lengthdir_x(kb,d),lengthdir_y(kb,d));
	}
		
	//Screen shake
	global.shake = 5;
	
	//Show damage
	var pop = instance_create_layer(x,y-16 + 16 * instance_number(obj_damage_done_pop),layer,obj_damage_done_pop);
	pop.dmg = dmg * (global.p_stats[stats.atk] div stat[stats.def]);
}