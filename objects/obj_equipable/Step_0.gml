scr_get_input();

if(pedestal != -1 && instance_exists(pedestal) && pedestal.dis && interact_key){
	scr_pickup_item(type,item,amount);
		
	instance_destroy();  
}else if(distance_to_object(global.body) <= 32 && interact_key){
	scr_pickup_item(type,item,amount);
	
	instance_destroy();
}

t = (t + inc) mod 360;
shift = amp * sin(degtorad(t));

oy += vspeed;
y = oy + shift;

