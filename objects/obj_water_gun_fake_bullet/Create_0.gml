offs = 8;

event_inherited();

fall_rate = 0;

life_time = -1;

damage = 0;
kb_amount = 5;

prev_bullet = noone;

with shadow {
	phy_linear_damping = other.phy_linear_damping;
	visible = false;
}

image_speed = 0;