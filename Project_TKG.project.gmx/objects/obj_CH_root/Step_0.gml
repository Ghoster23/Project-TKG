if x + 10 < obj_CH_tree_state.x{
    mult = -1;
}else if x - 10 > obj_CH_tree_state.x{
    mult = 1;
}else {
    mult = 2;
}

if obj_CH_tree_state.burrowed == true and obj_CH_tree_state.state == 1 and image_index < 8{
    visible = true;
    image_speed = 0.4;
    
}else if obj_CH_tree_state.burrowed == true and obj_CH_tree_state.state == 1 and (image_index >= 8){
    sprite_index = spr_CH_root_idle;
	image_index = 13;
    obj_CH_tree_state.burrowed = false;
} 

if obj_CH_tree_state.burrowed == false and obj_CH_tree_state.state == 3 and sprite_index != spr_CH_root{
    image_speed = -0.4;
    sprite_index = spr_CH_root;
    image_index = 9;
    
}else if obj_CH_tree_state.burrowed == false and obj_CH_tree_state.state == 3 and (image_index == 0 or image_index == 1){
    image_speed = 0;
    obj_CH_tree_state.burrowed = true;
    visible = false;
} 

if obj_CH_tree_state.burrowed == false{
    switch obj_CH_tree_state.state {
        case 1:
            if(sprite_index == spr_CH_root_idle and swing == false){
                if(abs(mult) == 1){
                    sprite_index = spr_CH_root_swing;
                    image_xscale = mult;
					
                }else   {
                    sprite_index = spr_CH_root_swing_d;
					
                }
                
                image_speed = 0.2;
                swing = true;
            }
            
            if((sprite_index == spr_CH_root_swing or sprite_index == spr_CH_root_swing_d) and image_index > 15){
                sprite_index = spr_CH_root_idle;
                
                alarm[0] = 0.5 * room_speed;
            }
        
        break;
    
        case 2:
            if(sprite_index == spr_CH_root_idle and jab == false){
                if(abs(mult) == 1){
                    sprite_index = spr_CH_root_jab;
                    image_xscale = mult;
                }else   {
                    sprite_index = spr_CH_root_jab_d;
                }
                
                image_speed = 0.2;
                jab = true;
            }
            
            if((sprite_index == spr_CH_root_jab or sprite_index == spr_CH_root_jab_d) and (image_index > 15)){
                sprite_index = spr_CH_root_idle;
                
                alarm[0] = 0.5 * room_speed;
            }
        
        break;

    }
}

