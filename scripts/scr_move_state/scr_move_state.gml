/// @description scr_move_state
scr_get_input();

//check for dash
if (dash_key && 
   (right_key == true or left_key == true or up_key == true or down_key == true) &&
   not mouse_r_key && 
   not global.dash_cd && 
   global.status[1,0] == 0) {
    state = scr_dash_state;
	
	global.p_inv = true;
    alarm[0] = room_speed/3;
    instance_create_layer(x,y,layer,obj_roll);
}

// get the axis 
xaxis = (right_key - left_key);
yaxis = (down_key  -   up_key);

//get direction
dir = point_direction( 0, 0, xaxis, yaxis);

//get the length
if (xaxis == 0 and yaxis = 0) {
    len = 0;
} else {
    len = global.p_spd;
}

//get the hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// move
if(not global.status[1,0]){
    phy_position_x += hspd;
    phy_position_y += vspd;
}

//footstep sound
if (hspd != 0 or vspd != 0){
	global.walking = true;
	
}

if (hspd == 0 and vspd == 0){
	global.walking = false;
}