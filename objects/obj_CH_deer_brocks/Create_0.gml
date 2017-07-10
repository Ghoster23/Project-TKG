creator = 0;
event_inherited();
image_alpha = 0;
image_xscale = 2;
image_yscale = 2;

for(i = 0; i < instance_number(obj_CH_deer_brock); i += 1){
    if(instance_find(obj_CH_deer_brock,i).f_x == x and instance_find(obj_CH_deer_brock,i).f_y == y){
        creator = instance_find(obj_CH_deer_brock,i);
    }
}

