event_inherited();

dir = point_direction(global.body.phy_position_x,global.body.phy_position_y,mouse_x,mouse_y);

phy_fixed_rotation = true;
physics_apply_impulse(x, y, lengthdir_x(15, dir ),lengthdir_y(15,dir));

image_speed=0;
image_index = irandom_range(0,image_number-1);

pick_up = false;

z         = 18;
zzero     = 18;
speedzero = 0;
t         = 0;
a         = -5;
stop      = false;
bounce    = false;
zmax=zzero + ((speedzero*speedzero)/(2*-a));
phy_linear_damping=0.5;

draw_script = scr_water_stream;

prev_ball = noone;

fix1 = physics_fixture_create();
physics_fixture_set_circle_shape(fix1,6);
physics_fixture_set_density(fix1,0.5);
physics_fixture_set_restitution(fix1,0.5);
physics_fixture_set_linear_damping(fix1,1);
physics_fixture_set_collision_group(fix1,1);
my_fix=physics_fixture_bind(fix1, self);

fallingpit = false;