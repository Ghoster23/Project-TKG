event_inherited();
image_speed  = .7;
phy_rotation = -point_direction(x,y,mouse_x,mouse_y);
impact      = false;

//Depth vars
offset = true;
offs   = 32;

//Damage Dealer vars
mult = stats.atk;
divi = stats.def;

kb_amount = global.p_stats[stats.atk] * 0.8;
damage    = 1;