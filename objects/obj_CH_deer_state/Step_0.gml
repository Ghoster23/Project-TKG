depth = -y;

s_x = s_x + ss_x*5;

if(s_x > 360 and ss_x == 1){
    ss_x = -1;

}
if(s_x < 180 and ss_x == -1){
    ss_x = 1;
    
}

x = phy_position_x;
y = phy_position_y;

phy_position_x = i_x;
phy_position_y = i_y;

if global.b_hp <= 0{
	state = 5;
}

///Action state based changes
switch(state){
    //Rock state
    case 0:
        ///Screen shake
        
        ///Falling Rocks
        if(alarm[0] > 5 * room_speed and alarm[0] mod 5 == 0){
            x_s = obj_body.x - 60;
            y_s = obj_body.y - 60;
            
            x_e = obj_body.x + 60;
            y_e = obj_body.y + 60;
            
            instance_create_layer(x,y-500,layer,obj_fln_rock);
            sprite_index = spr_CH_deer_state_hurt;
        }
        
        ///Blocking Rocks
        if(alarm[0] > 0 and alarm[0] < 6 and once == false){
            f_x = 275;
            f_y = 415;
            instance_create_layer(275,115,layer,obj_CH_deer_brock);
            f_x = 400;
            f_y = 330;
            instance_create_layer(400,30,layer,obj_CH_deer_brock);
            f_x = 144;
            f_y = 330;
            instance_create_layer(144,30,layer,obj_CH_deer_brock);
            once = true;
			sprite_index = spr_CH_deer_state;
        }
        
    break;
    
    //Leaf State
    case 1:
        ///Leaf Barrage
        if(once == false){
            pat = "f";
            alarm[1] = 10 * room_speed;
            once = true;
            
        }
        
        if(alarm[1] > 0){
            instance_create_layer(x,y,layer,obj_CH_leaf);
            instance_create_layer(x+10,y,layer,obj_CH_leaf);
            instance_create_layer(x-10,y,layer,obj_CH_leaf);
        }
                
    break;
    
    case 2:
        ///Leaf Shooting
        if(once == false){
            alarm[2] = 10 * room_speed;
            once = true;
            
        }
        
        pat = "a";
        
        instance_create_layer(x,y,layer,obj_CH_leaf);
        
    break;
    
    //Root State
    case 3:
        ///Follower roots
        alarm[3] = 10 * room_speed;
        instance_create_layer(x,y+32,layer,obj_CH_mroots);
        state = 4;
    break;
    case 4:
	break;
    //Defeat State
    case 5:
        ///Death animation
        sprite_index = spr_CH_deer_death;
        image_speed = 2;
        
        ///Destroy and give rewards
        if(image_index == 6 and sprite_index == spr_CH_deer_death){
            instance_create_layer(x,y,layer,obj_CH_stump);
            instance_create_layer(x,y,layer,obj_equipable);
        
        }
        
    break;
}

