/// @description dash alarm
global.body.visible=true;
obj_head.visible=true;

if instance_exists(obj_stuck_sword) == false {
    weapon = instance_create_layer(x,y,global.body.layer,global.weapon);
}

with obj_roll{
    instance_destroy();
}

state = scr_move_state;
global.p_inv = false;
global.dash_cd = true;