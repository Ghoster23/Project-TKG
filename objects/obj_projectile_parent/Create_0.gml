event_inherited();

spd = 0;

dir = 0;

once = false;

life_time = 1 * room_speed;

offset = true;
offs   = 24;

collided = false;

fall_rate = 0.4;

piercing  = false;
destroyed = false;

if(type == 1){
	shadow = instance_create_layer( phy_position_x, phy_position_y + 24,
										"Instances", obj_fluid_projectile_shadow);
}else if(type == 2){
	shadow = instance_create_layer( phy_position_x, phy_position_y + 24,
										"Instances", obj_fluid_converter_projectile_shadow);
}else {
	shadow = instance_create_layer( phy_position_x, phy_position_y + 24,
										"Instances", obj_projectile_shadow);
}

shadow.owner = self;

prev_image_speed = 0;
alarms[0] = -1;