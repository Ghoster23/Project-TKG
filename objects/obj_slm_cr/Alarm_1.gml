///@description Die
randomize();

if((irandom(99) + 1) <= 10){
    instance_create_layer(x,y,layer,obj_hheart);
                
}else if((irandom(99) + 1) == 1){
    instance_create_layer(x,y,layer,obj_fheart);
                
}

instance_destroy();