if casting == true and cont >= 0{

switch cont {
    case 3:
        if fl_dir == "card"{
            instance_create_layer(x,y-24,layer,obj_skull_fl);
        }else if fl_dir == "diag"{
            instance_create_layer(x+20,y-20,layer,obj_skull_fl);
        }
                    
    break;
    case 2:
        if fl_dir == "card"{
            instance_create_layer(x-24,y,layer,obj_skull_fl);
        }else if fl_dir == "diag"{
            instance_create_layer(x-20,y+20,layer,obj_skull_fl);
        }
                
    break;
    case 1:
        if fl_dir == "card"{
            instance_create_layer(x,y+24,layer,obj_skull_fl);
            fl_dir = "diag";
        }else if fl_dir == "diag"{
            instance_create_layer(x-20,y-20,layer,obj_skull_fl);
            fl_dir = "card";
        }
        
        alarm[2] = 0.25 * room_speed;
    break;
}

    

    if cont > 0{
        alarm[6] = 0.20 * room_speed;
        cont -= 1;
    }else {
        fl_go = true;
    }
    
}

