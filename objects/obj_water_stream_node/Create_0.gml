offs = 8;

event_inherited();

damage	  =  0;
kb_amount = 10;

with shadow {
	sprite_index = spr_circle_24b;
	scr_fluid_converter_init(180,1,[1,1,1,3],true,true,false);
	step_event = scr_fluid_converter_step;
}

image_speed = 0;
visible = false;