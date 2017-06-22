scr_get_input();
image_angle = point_direction(x,y,mouse_x,mouse_y);
body_d=obj_body.depth;
depth := body_d+global.p_spd+1;
global.thrown=false;

//show_debug_message(string(point_direction(x,y,mouse_x,mouse_y)));

//handle depth (purelly visual)
if point_direction(x,y,mouse_x,mouse_y)>44 and point_direction(x,y,mouse_x,mouse_y)<135{
    depth := body_d+global.p_spd+1;
}
else {
    depth := body_d-global.p_spd-1;
}

//atacking
if (attack_key) and allow = true {
    allow = false;
    alarm[1] = 0.5 * room_speed; 
    image_xscale = -1*image_xscale;
    image_yscale = -1*image_yscale;
    instance_create(x, y, obj_swing); 
}

if (throw_key) {
    instance_create(obj_body.x,obj_body.y,obj_sword_t);
    instance_destroy();
    global.thrown = true;
}



