event_inherited();
type   = 0;
item   = 0;
amount = 0;
jump = false;
dir = point_direction(phy_position_x,phy_position_y,mouse_x,mouse_y);

phy_fixed_rotation = true;

physics_apply_impulse(phy_position_x,phy_position_y,lengthdir_x(32,dir),lengthdir_y(32,dir));

z  = 0;

draw_script = scr_item_jump;