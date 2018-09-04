event_inherited();

offset = true;

///Movement variables
spd        = 0;
dir        = 0;

phy_bullet = true;

x = phy_position_x;
y = phy_position_y;

abs_cos    = 1;

fall_rate = 0.4;
life_time = 1 * room_speed;

once = false;

///Shadow's variables
shadow = instance_create_layer( phy_position_x, phy_position_y,
							   "Instances", obj_projectile_shadow);
										
shadow.owner = self;

shadow_rot = dir;

///Drop variables
drop = false;

type   = -1;
item   = -1;
amount = -1;

///Projectile variables
collided  = false;
piercing  = false;
destroyed = false;

scr_pausable_init(1);