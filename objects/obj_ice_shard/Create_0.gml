event_inherited();

offs = 16;

life_time = 0.2 * room_speed;

fall_rate = offs / life_time;

damage = 1;

with shadow {
	visible         = true;
	phy_position_y += other.offs;
	sprite_index    = other.sprite_index;
	image_blend     = c_black;
	image_alpha     = 0.3;
}

phy_fixed_rotation = true;

image_index = irandom(2);
image_speed = 0;

//Particles
em = part_emitter_create(global.ps_if);
