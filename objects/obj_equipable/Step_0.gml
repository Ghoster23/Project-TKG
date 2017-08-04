scr_get_input();

if(distance_to_object(obj_body) <= 32 && interact_key == true){
    instance_destroy();
	
    //Equipping
    switch(select){
		case 0:
		    global.equipped[0] = true;
		break;
		case 1:
		    global.equipped[1] = true;
		break;
		case 2:
		    global.equipped[2] = true;
		break;
		case 3:
		    global.equipped[3] = true;
		break;
		case 4:
		    global.equipped[4] = true;
		break;
		case 5:
		    global.equipped[5] = true;
		break;
	}    
}

t = (t + inc) mod 360;
shift = amp * sin(degtorad(t));

oy += vspeed;
y = oy + shift;

