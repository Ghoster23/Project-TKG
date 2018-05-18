dir = point_direction(x,y,mouse_x,mouse_y);

phy_rotation       = -dir - 45;
phy_fixed_rotation = true;

physics_apply_impulse(x,y,lengthdir_x(15,dir),lengthdir_y(15,dir));

ice = instance_create_layer( x, y, "IF", obj_icy_wind);
		
with(ice){
	image_xscale = 1.25;
	image_yscale = 1.25;
	conv.image_xscale = 1.25;
	conv.image_yscale = 1.25;
	conv.x -= 0.625 * sprite_width;
	conv.y -= 0.625 * sprite_height;
	conv.blocks = true;
	alarm[0] = -1;
}

value = 119;