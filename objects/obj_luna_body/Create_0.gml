//Sprites
body_sprs[0] = spr_luna_body_up;
body_sprs[1] = spr_luna_body_right;
body_sprs[2] = spr_luna_body_down;
body_sprs[3] = spr_luna_body_left;
body_sprs[4] = spr_luna_body_still;

roll_sprs[0] = spr_jason_roll_up;
roll_sprs[1] = spr_jason_roll_side;
roll_sprs[2] = spr_jason_roll_down;
roll_sprs[3] = spr_jason_roll_side;

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
global.p_LVB_water = 0;

fl_gen = instance_create_layer(phy_position_x,phy_position_y,layer,obj_luna_fluid_gen);