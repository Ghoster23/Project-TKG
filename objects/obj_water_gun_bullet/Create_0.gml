type = 0;

event_inherited();

life_time = 8;

spd = irandom_range(10,12);

fall_rate = offs / life_time;

damage = 0;

shadow.phy_linear_damping = phy_linear_damping;
shadow.visible = false;

image_speed = 0;
image_index = irandom_range(0,7);
image_alpha = 1;