scr_get_input();

if(distance_to_object(obj_body) <= 32 && interact_key == true){
    instance_destroy();
	
    global.equiped[select] = true;
	   
}

t = (t + inc) mod 360;
shift = amp * sin(degtorad(t));

oy += vspeed;
y = oy + shift;

