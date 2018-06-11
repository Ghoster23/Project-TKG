if(pedestal != -1 && instance_exists(pedestal)){
	if(pedestal.interacted){
		scr_pickup_item(type,item,amount);
		
		instance_destroy();
	}
}else {
	scr_interactable_step();
	
	if(interacted){
		scr_pickup_item(type,item,amount);
	
		instance_destroy();
	}
}

t = (t + inc) mod 360;
shift = amp * sin(degtorad(t));

oy += vspeed;
y = oy + shift;

