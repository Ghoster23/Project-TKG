creator = 0;
event_inherited();
image_alpha = 0;

for(i = 0; i < instance_number(obj_fln_rock); i += 1){
    if(instance_find(obj_fln_rock,i).f_x == x and instance_find(obj_fln_rock,i).f_y == y){
        creator = instance_find(obj_fln_rock,i);
    }
}

