//Projectile initialization
event_inherited();

conv = instance_create_layer( phy_position_x-24, phy_position_y-24,
							  layer, obj_icy_wind_converter);

conv.owner = id;
		  
em = part_emitter_create(global.ps_if);
destroy = false;

phy_bullet = true;