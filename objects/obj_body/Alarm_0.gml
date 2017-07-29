/// @description dash alarm
obj_body.visible=true;
obj_head.visible=true;

if instance_exists(obj_sword_t)=false {
    instance_create_layer(x,y,obj_body.layer,obj_sword);
}

with obj_roll{
    instance_destroy();
}

state = scr_move_state;
global.p_inv = false;
global.dash_cd = true;