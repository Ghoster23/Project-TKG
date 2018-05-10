///@description Damage the entity
var is_dmg_dl = object_get_parent(other) == obj_damage_dealer;

if(not damaged and 
   not immune  and 
   not inv     and
   instance_exists(other) and 
	((is_dmg_dl and other.owner != id) || 
	 !is_dmg_dl)){
	
	//Get info from damage dealer
	var dmg = other.damage;
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
	
	//Deal Damage
	stat[stats.hp] -= ceil(dmg / (stat[dv] * (1 + modf[dv])));
	
	if(stat[stats.hp] <= 0){
		dead = true;
	}
	
	//Knockback
	if(kb != 0){		
		physics_apply_impulse(x,y,lengthdir_x(kb,d),lengthdir_y(kb,d));
	}
		
	//Screen shake
	global.shake = 5;
	
	//Show damage
	var pop = instance_create_layer(x,y-16 + 16 * instance_number(obj_damage_done_pop),layer,obj_damage_done_pop);
	pop.dmg = ceil(dmg / (stat[dv]*(1+modf[dv])));
}