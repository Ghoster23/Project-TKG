if owner.state == 0{
    image_angle = owner.i_dir;
}else if owner.state != 0{
    image_angle = owner.dir;
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
if owner.swing == true {
    image_xscale = -1*image_xscale;
    image_yscale = -1*image_yscale;
    instance_create(x,y,obj_e_swing);
    owner.swing = false;
}

