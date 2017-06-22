if owner.state == 0{
    image_angle = owner.i_dir;
}else if owner.state != 0{
    image_angle = point_direction(x,y,obj_body.x,obj_body.y);
}

if owner.state == 3{
    instance_destroy();
}

body_d = owner.depth;
depth := body_d+owner.e_spd+1;

//handle depth (purelly visual)
if image_angle > 44 and image_angle < 135{
    depth := body_d+owner.e_spd+1;
}
else {
    depth := body_d-owner.e_spd-1;
}

//atacking
if image_index >= 5{
    image_index = 0;
    image_speed = 0;
    instance_create(x,y,obj_e_arrow);
}

