scr_get_input();

if pedestal != -1 {
if instance_exists(pedestal) {
	if(pedestal.dis && interact_key){
	    instance_destroy();
	
	    global.equiped[select] = true;
	   
	}
}
}else {
	if(distance_to_object(global.body) <= 32 && interact_key){
	    instance_destroy();
	
	    global.equiped[select] = true;
	   
	}
}

t = (t + inc) mod 360;
shift = amp * sin(degtorad(t));

oy += vspeed;
y = oy + shift;

