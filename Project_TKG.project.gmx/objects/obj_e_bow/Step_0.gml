if owner.state == 0{
    image_angle = owner.i_dir;
}else if owner.state != 0{
    image_angle = point_direction(x,y,obj_body.x,obj_body.y);
}

if owner.state == 3{
    instance_destroy();
}

//atacking
if image_index >= 5{
    image_index = 0;
    image_speed = 0;
    instance_create_layer(x,y,layer,obj_e_arrow);
}

