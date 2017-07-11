event_inherited();
state = 0;
alarm[0] = 15 * room_speed;
image_speed = 0;
once = false;
depth = -y;

phy_fixed_rotation = true;
inv = false;

global.b_mhp = 120;
global.b_hp = 120;
global.b_atk = 8;
global.b_satk = 6;
global.b_def = 6;
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

prev_image_speed = 0;

for(i = 0; i < 10; i += 1){
	alarms[i] = -1;
}