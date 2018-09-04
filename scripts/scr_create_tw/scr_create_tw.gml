///@description Create a tool or weapon
///@param tool/weapon_id
///@param durabillity
{
var tl_id = argument0;
var durab = argument1;

if(tl_id >= tl_n_wep.count){ return noone;}

if(durab < -1 || durab == 0){ return noone;}

var data = scr_tw_get_data(tl_id);
	
var tl = instance_create_layer(x,y,layer,obj_tool);
	
with tl {
	name  = data[0];
	owner = other;
	
	if(durab == -1){
		player_owned = true;
	}
		
	type   = item_type.tl_n_wep;
	item   = tl_id;
	amount = durab;
	
	//Visuals
	sprite_index = data[1];
	
	if(data[2] >= 0){
		image_index = data[2];
	}
	else {
		img_spd = -1 * data[2];
	}
	
	animations = data[3];
		
	if(animations[0]){
		image_speed = img_spd;
	}else   {
		image_speed = 0;
	}
	
	ang_off_base = data[4];
	ang_off      = data[4];
	
	//Mechanics
	var mech = data[5];
		
	mult      = mech[0];
	divi      = mech[1];
	kb_amount = mech[2];
	
	//Skills
	var s_ids = data[6];
	
	for(var i = 0; i < 4; i++){
		var skill_id = s_ids[i];
			
		if(skill_id != -1){
			var skill_data = scr_skill_get_data(skill_id);
				
			skills[i] = skill_data[0];
			params[i] = skill_data[1];
			if(i == 1 || i == 3){
				charge[i div 2] = skill_data[2];
			}
			icons[i]  = skill_data[3];
		}
	}
	
	cds = data[7];
}
	
return tl;
}