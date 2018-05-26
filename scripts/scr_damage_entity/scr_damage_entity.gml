///@description Damage the entity
if(variable_instance_exists(other,"owner")){
	show_debug_message("Owner: " + string(other.owner));
	show_debug_message("Dealer: " + string(object_get_name(other.object_index)));
	show_debug_message("Recipient: " + string(id));
	
	if(other.owner == id){
		var mine = true;
		show_debug_message("Mine");

	}else {
		var mine = false;
		show_debug_message("Not mine");
		
	}
}else {
	var mine = false;
}

if(not damaged and 
   not immune  and 
   not inv     and
   not mine and
   instance_exists(other)){
	   
	var kb  = other.kb_amount;
	var xx = other.x;
	var yy = other.y;
	var d  = point_direction(xx,yy,x,y);
	
	//Knockback
	if(kb != 0){		
		physics_apply_impulse(x,y,lengthdir_x(kb,d),lengthdir_y(kb,d));
	}
	
	var dmg = other.damage;
	
	if(dmg > 0){
		var dv  = other.divi;
		
		show_debug_message("Did damage: " + string(object_get_name(other.object_index)));
	
		//Spew blood
		scr_blood(xx,yy,object_get_name(other.object_index));
	
	
		//Deal Damage
		if(!other.ohko){
			stat[stats.hp] -= ceil(dmg / (stat[dv] * (1 + modf[dv])));
		}else {
			stat[stats.hp]  = 0;
		}
	
		if(stat[stats.hp] <= 0){
			dead = true;
		}
		
		//Screen shake
		global.shake = 5;
		
		//Show damage
		var pop = instance_create_layer(x,y-16 + 16 * instance_number(obj_damage_done_pop),layer,obj_damage_done_pop);
		pop.dmg = ceil(dmg / (stat[dv]*(1+modf[dv])));
	}
	
	//Destroy none piercing projectiles
	if(object_get_parent(other.object_index) == obj_projectile_parent){
		with other {
			if(not piercing){
				destroyed = true;
			}
		}
	}
}

show_debug_message("-- done --");