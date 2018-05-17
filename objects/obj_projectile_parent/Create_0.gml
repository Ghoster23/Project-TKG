event_inherited();

spd = 0;
dir = 0;

fall_rate = 0.4;
life_time = 1 * room_speed;

once = false;

offset = true;

collided  = false;
piercing  = false;
destroyed = false;

shadow = instance_create_layer( phy_position_x, phy_position_y + 24,
							   "Instances", obj_projectile_shadow);
										
shadow.owner = self;

prev_image_speed = 0;
alarms[0] = -1;