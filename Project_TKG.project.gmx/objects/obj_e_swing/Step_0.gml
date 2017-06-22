if instance_exists(creator){
    depth = creator.depth;
}

//if image_index = 1{
//    instance_create(x,y,obj_kb);
//}

if image_index = 3 {
    instance_destroy();
    
//    with(obj_kb){
//        instance_destroy();
//    }
}

if place_meeting(x,y,obj_body) and cd = false and global.p_inv == false{
    global.p_hp -= creator.e_atk div global.p_def;
    cd = true;
    alarm[1] = 30;
    global.p_inv = true;
}

