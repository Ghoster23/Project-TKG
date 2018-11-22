///@description Damage the entity
///@param damage
///@param defense_stat
///@param ohko
///@param knockback_amount
var vulnerable = false;

#region Vulnerabillities
switch(object_index){
	case obj_hspider:
		vulnerable = (other.object_index == obj_explosion_damage);
	break;
}
#endregion

if(not damaged and (not (immune or inv) or vulnerable)){
	
	var  dmg = argument0;
	var   dv = argument1;
	var ohko = argument2;
	
	#region Knockback
	var  kb = argument3;
	
	var  xx = other.x;
	var  yy = other.y;
	var   d = point_direction(xx,yy,x,y);
	
	if(kb != 0){ physics_apply_impulse(x,y,lengthdir_x(kb,d),lengthdir_y(kb,d)); }
	#endregion
	
	if(dmg > 0){	
		//Spew blood
		scr_blood(xx,yy,object_get_name(object_index));
	
		#region Deal Damage
		if(stat[stats.arm] == 0){
			if(not ohko){
				dmg = ceil(dmg / (stat[dv] * (1 + modf[dv])));
			}else {
				dmg = stat[stats.mhp] - stat[stats.hp];
				stat[stats.hp] = 0;
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