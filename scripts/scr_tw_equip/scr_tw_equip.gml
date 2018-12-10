{
var new  = [];
var slot = 0;
	
with(obj_inventory_controller){
	slot = tool_slot + selected_tl;
	new  = scr_inv_get_pos(slot);
}

var current = global.body.weapon;

if(current == noone){
	with global.body {
		weapon = scr_create_tw(new[1],new[2]);
	
		if(weapon != noone){
			weapon.player_owned = true;
			weapon.slot = slot;
			return true;
		}
	}
}else {
	if(current.slot == slot){
		return false;
	}
	
	with global.body {	
		//Make new weapon
		weapon = scr_create_tw(new[1],new[2]);
		
		if(weapon != noone){
			weapon.player_owned = true;
			weapon.slot = slot;
			instance_destroy(current);
			return true;
		}else {
			weapon = current;
			return true;
		}
	}
}
}