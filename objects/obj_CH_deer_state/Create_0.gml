event_inherited();
state = 0;
alarm[0] = 15 * room_speed;
image_speed = 0;
once = false;
depth = -y;
i_x = x;
i_y = y;

phy_fixed_rotation = true;
inv = false;

global.b_mhp = 60;
global.b_hp = 60;
global.b_atk = 8;
global.b_satk = 6;
global.b_def = 3;
global.b_sdef = 3;
global.b_spd = 0;

x_s = 145;
y_s = 288;

x_e = 417;
y_e = 500;

s_x = 180;
ss_x = 1;
mult = 1;

pat = obj_CH_tree_state.pat;