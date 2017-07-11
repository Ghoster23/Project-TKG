if(global.p_hp < global.p_maxhp){
    global.p_hp += 4;
    if(global.p_hp > global.p_maxhp){
        global.p_hp -= global.p_hp - global.p_maxhp;
    }
    instance_destroy();
}

