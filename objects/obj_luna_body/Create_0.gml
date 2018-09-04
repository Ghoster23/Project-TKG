//Sprites
body_sprs[1] = spr_luna_body_up;
body_sprs[0] = spr_luna_body_right;
body_sprs[3] = spr_luna_body_down;
body_sprs[2] = spr_luna_body_left;

body_still_sprs[1] = spr_luna_body_up_still;
body_still_sprs[0] = spr_luna_body_right_still;
body_still_sprs[3] = spr_luna_body_down_still;
body_still_sprs[2] = spr_luna_body_left_still;

body_idle = spr_luna_body_idle;

roll_sprs[1] = spr_luna_dash_up;
roll_sprs[0] = spr_luna_dash_right;
roll_sprs[3] = spr_luna_dash_down;
roll_sprs[2] = spr_luna_dash_left;

head_spr  = spr_luna_head;

hands_spr = spr_jason_hands;

feet_spr  = spr_jason_feet;

alarm_count = 4;

//General
event_inherited();

//Visuals
is = 0.2;
hs = false;

//Abillity
global.p_LVB_water = 100000;

wind = noone;
dash_mult = 3;
dash_time = 0.5;
dash_cd   = 2/3;
dash_move = true;

phy_bullet = true;

//fl_gen = instance_create_layer(phy_position_x,phy_position_y,layer,obj_luna_fluid_gen);