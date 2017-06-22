if instance_exists(obj_sword){
    depth = obj_sword.depth
}

if image_index = 1{
    instance_create(x,y,obj_kb);
}

if image_index = 3 {
    instance_destroy();
    
    with(obj_kb){
        instance_destroy();
    }
}

