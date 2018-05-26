event_inherited();

spd        = 0;
dir        = 0;
shadow_rot = dir;

fall_rate = 0.4;
life_time = 1 * room_speed;

once = false;

shadow = instance_create_layer( phy_position_x, phy_position_y,
							   "Instances", obj_projectile_shadow);
										
shadow.owner = self;

offset = true;

drop = false;

type   = -1;
item   = -1;
amount = -1;

collided  = false;
piercing  = false;
destroyed = false;

prev_image_speed = 0;
alarms[0] = -1;