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
	sprite_index = spr_circle_24b;
	scr_fluid_converter_init(180,1,[1,1,1,3],true,true,false);
	step_event = scr_fluid_converter_step;
}

image_speed = 0;