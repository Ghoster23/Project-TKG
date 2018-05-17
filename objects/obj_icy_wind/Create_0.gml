type = 2;

event_inherited();

life_time = 1.2 * room_speed;

fall_rate = 0;

damage = 0;

piercing = true;

with(shadow){
	phy_linear_damping = phy_linear_damping;

	values[0] = 0;
	values[1] = 3;
	values[2] = 2;
	values[3] = 3;
	
	value = 119;
}

image_alpha = 0.5;
		  
em = part_emitter_create(global.ps_if);