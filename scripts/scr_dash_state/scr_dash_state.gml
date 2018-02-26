/// @description scr_dash_state
//Hide head and other player objects
head.visible = false;
global.weapon.visible = false;

//Give it more speed
len = global.spd * 2;

//Make it invulnerable
global.p_inv = true;

//Put it on cooldown
alarm[0] = room_speed/3;
global.dash_cd = true;