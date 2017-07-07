/// @description scr_move_state
scr_get_input();

//check for dash
if (dash_key && (right_key == true or left_key == true or up_key == true or down_key == true) && global.dash_cd == false and global.st_stuck == false) {
    state = scr_dash_state;
    alarm[0] = room_speed/3;
    instance_create_layer(x,y,obj_body.layer,obj_roll);
}

// get the axis 
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

//get direction
dir = point_direction(0, 0, xaxis, yaxis);

//get the length
if (xaxis == 0 and yaxis = 0) {
    len = 0;
} else {
    len = spd;
}

//get the hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// move
if global.st_stuck == false{
    phy_position_x += hspd;
    phy_position_y += vspd;
}

//control sprite
image_speed =.5;
if (len == 0) {
    sprite_index = global.char_bsprs[global.char,3];
    image_speed = 0;
    image_index = spr_side;
}

//vertical sprites
if (vspd > 0) {
    sprite_index = spr_body;
} else if (vspd < 0) {
    sprite_index = spr_body;
}

//horizontal sprites
if (hspd > 0) {
    sprite_index = spr_body;
    image_xscale = 1;
} else if (hspd < 0) {
    sprite_index = spr_body;
    image_xscale = -1;
}
