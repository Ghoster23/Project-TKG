/// @description dash alarm
obj_body.visible=true;
obj_head.visible=true;
if instance_exists(obj_sword_t)=false {
    instance_create_layer(x,y,obj_body.layer,obj_sword);
}
with obj_roll{
    instance_destroy();
    global.invuln = false;
}

state = scr_move_state;

global.dash_cd = true;
alarm[1] = 1 * room_speed;

