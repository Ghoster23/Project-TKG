offs = 8;

event_inherited();

fall_rate = 0;

life_time = -1;

damage	  = 0;
kb_amount = 10;

prev_bullet = noone;

with shadow {
	sprite_index = spr_circle_24b;
	phy_fixed_rotation = true;
	scr_fluid_converter_init(180,1,[1,1,1,3],true,true,false);
	step_event = scr_fluid_converter_step;
}

image_speed = 0;

beam_color = make_color_rgb(8,125,204);