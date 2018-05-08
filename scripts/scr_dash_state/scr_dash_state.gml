/// @description scr_dash_state
//Hide head and other player objects
head.visible = false;
global.weapon.visible = false;

//Give it more speed
len = stat[stats.spd] * 2;

//Make it invulnerable
inv = true;

//Put it on cooldown
alarm[0] = room_speed/3;
dash_cd = true;