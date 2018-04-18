/// @description Dash done
//Become visible
head.visible          = true;
global.weapon.visible = true;

//Destroy roll
sprite_index = body_sprs[4];
image_index  = spr_side;

//Remove invincibility
global.p_inv   = false;

//Start dash cooldown
state = 0;
alarm[1] = 0.6 * room_speed;