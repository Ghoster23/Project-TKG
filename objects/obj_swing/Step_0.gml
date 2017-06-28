if image_index = 1{
    instance_create_layer(x,y,layer,obj_kb);
}

if image_index = 3 {
    instance_destroy();
    
    with(obj_kb){
        instance_destroy();
    }
}

