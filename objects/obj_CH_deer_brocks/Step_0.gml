image_alpha += 0.1;

if(not instance_exists(creator)){
    instance_destroy();
}

if(place_meeting(x,y,global.body.feet) and abs(y - creator.y) < 24 and creator.image_index == 0){
    if(not global.p_inv and not global.p_hurt and not global.p_hp < 0){
        scr_damage_player(0,global.b_atk,global.p_def);
        
        with(creator){
            instance_destroy();
        }
        
        instance_destroy();
    }
}

