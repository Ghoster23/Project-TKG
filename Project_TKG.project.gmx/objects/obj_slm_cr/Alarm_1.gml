randomize();

if((irandom(99) + 1) <= 10){
    instance_create(x,y,obj_hheart);
                
}else if((irandom(99) + 1) == 1){
    instance_create(x,y,obj_fheart);
                
}

instance_destroy();

