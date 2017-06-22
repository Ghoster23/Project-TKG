switch cont {
    case 3:
        if fl_dir == "card"{
            instance_create(x,y-24,obj_skull_fl);
        }else if fl_dir == "diag"{
            instance_create(x+20,y-20,obj_skull_fl);
        }
                    
    break;
    case 2:
        if fl_dir == "card"{
            instance_create(x-24,y,obj_skull_fl);
        }else if fl_dir == "diag"{
            instance_create(x-20,y+20,obj_skull_fl);
        }
                
    break;
    case 1:
        if fl_dir == "card"{
            instance_create(x,y+24,obj_skull_fl);
            fl_dir = "diag";
        }else if fl_dir == "diag"{
            instance_create(x-20,y-20,obj_skull_fl);
            fl_dir = "card";
        }
        
    break;
}

cont -= 1;

if cont >= 0{
    alarm[1] = 0.25 * room_speed;
        
}else {
    fl_go = true;
    alarm[2] = 0.1 * room_speed;
        
}

