scr_get_input();
depth = -y -19;

if(distance_to_object(obj_body) <= 5 && interact_key == true){
    instance_destroy();
    //Equipping
    switch(global.select){
                case 0:
                    global.eq_0 = true;
                break;
                case 1:
                    global.eq_1 = true;
                break;
                case 2:
                    global.eq_2 = true;
                break;
                case 3:
                    global.eq_3 = true;
                break;
                case 4:
                    global.eq_4 = true;
                break;
                case 5:
                    global.eq_5 = true;
                break;
            break;
            }    
        }
    




t = (t + inc) mod 360;
shift = amp * sin(degtorad(t));

oy += vspeed;
y = oy + shift;

