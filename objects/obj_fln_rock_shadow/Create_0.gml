creator = 0;
event_inherited();
image_alpha = 0;


for(i = 0; i < instance_number(obj_fln_rock); i += 1){
	var inst = instance_find(obj_fln_rock,i);
	
    if(inst.f_x == x and inst.f_y == y){
        creator = inst;
    }
}

max_height = abs(y - creator.y);
height = max_height;