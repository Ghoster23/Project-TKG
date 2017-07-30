if(global.p_hp < global.p_maxhp){

    global.p_hp += image_index;
    if(global.p_hp > global.p_maxhp){
        global.p_hp -= global.p_hp - global.p_maxhp;
    }
	
    instance_destroy();
}

