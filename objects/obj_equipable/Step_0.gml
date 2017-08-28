scr_get_input();

if instance_exists(pedestal) {
	if(pedestal.dis && interact_key){
	    instance_destroy();
	
	    global.equiped[select] = true;
	   
	}
}

t = (t + inc) mod 360;
shift = amp * sin(degtorad(t));

oy += vspeed;
y = oy + shift;

