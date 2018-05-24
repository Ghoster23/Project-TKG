event_inherited();

offs = 16;

life_time = 0.2 * room_speed;

fall_rate = offs / life_time;

damage = 1;

shadow.phy_linear_damping = phy_linear_damping;
shadow.visible = true;
shadow.phy_position_y += offs;
phy_fixed_rotation = true;

image_index = irandom(2);
image_speed = 0;

//Particles
em = part_emitter_create(global.ps_if);
