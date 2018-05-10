/// @description Dash done
//Become visible
global.weapon.visible = true;

//Destroy roll
sprite_index = body_sprs[spr_side];
image_speed  = is;

//Remove invincibility
inv = false;

//Start dash cooldown
state    = 0;
alarm[1] = (2/3) * room_speed;