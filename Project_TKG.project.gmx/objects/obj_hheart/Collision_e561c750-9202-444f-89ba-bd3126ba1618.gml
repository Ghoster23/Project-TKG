if(global.p_hp < global.p_maxhp){
    global.p_hp += 2;
    if(global.p_hp > global.p_maxhp){
        global.p_hp -= global.p_hp - global.p_maxhp;
    }
    instance_destroy();
}

