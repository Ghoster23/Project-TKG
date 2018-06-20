event_inherited();
visible = false;

type   = 0;
item   = 0;
amount = 0;

booted = false;

jump = true;

dir = false;

pick_up = false;

fallingpit = false;

fly2player = false;

frame = 0;

fix1 = physics_fixture_create();
physics_fixture_set_circle_shape(fix1,6);
physics_fixture_set_density(fix1,0.5);
physics_fixture_set_restitution(fix1,0.5);
physics_fixture_set_linear_damping(fix1,1);
physics_fixture_set_collision_group(fix1,1);
my_fix=physics_fixture_bind_ext(fix1, self,-16,-16);

phy_fixed_rotation = true;