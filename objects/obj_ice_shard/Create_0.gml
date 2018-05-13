type = 0;

event_inherited();

life_time = 0.3 * room_speed;

fall_rate = offs / life_time;

damage = 1;

shadow.phy_linear_damping = phy_linear_damping;

image_index = irandom(2);
image_speed = 0;

//Particles
em = part_emitter_create(global.ps_if);
