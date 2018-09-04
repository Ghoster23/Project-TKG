{
with global.body {
	var item = argument0;
	var amt  = argument1;
	
	var current = weapon;

	//Make new weapon
	weapon = scr_create_tw(item,amt);
		
	if(weapon != noone){
		weapon.player_owned = true;
		
		instance_destroy(current);
		
		return true;
		
	}else {
		weapon = current;
		
		return false;
	}
}
}