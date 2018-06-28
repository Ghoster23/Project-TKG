{
with global.body {
	if(weapon.pat_state <= weapon.base_state){
		var wep = argument0;
		var amt = argument1;

		//Delete instance of current weapon
		instance_destroy(weapon);

		//Make new weapon
		var data = scr_weapon_get_data(wep);

		if(data[0] != noone){
			weapon = scr_create_weapon(x,y,layer,data[0],id);
			weapon.image_index  = data[1];
			weapon.item         = wep;
			weapon.amount       = amt;
			weapon.player_owned = true;
		}
		
		return true;
	}
	
	return false;
}
}