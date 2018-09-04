dir = point_direction(x,y,mouse_x,mouse_y);
shadow = noone;

phy_rotation       = -dir - 45;
phy_fixed_rotation = true;

physics_apply_impulse(x,y,lengthdir_x(60,dir),lengthdir_y(60,dir));

ice = instance_create_layer( x, y, "IF", obj_freeze_wave_converter);
		
with(ice){
	image_xscale = 1.25;
	image_yscale = 1.25;

	x -= 0.625 * sprite_width;
	y -= 0.625 * sprite_height;
	
	alarm[0] = -1;
	owner    = other;
}

damage = 0;
mult = 0;
divi = 0;
kb_amount = 0;