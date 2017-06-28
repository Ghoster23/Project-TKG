if owner.state == 0{
    image_angle = owner.i_dir;
}else if owner.state != 0{
    image_angle = owner.dir;
}

if owner.state == 3{
    instance_destroy();
}

//atacking
if owner.swing == true {
    image_xscale = -1*image_xscale;
    image_yscale = -1*image_yscale;
    instance_create_layer(x,y,layer,obj_e_swing);
    owner.swing = false;
}

