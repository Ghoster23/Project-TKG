///@description Spawn drops
randomize();

chance = irandom(99) + 1;

if not global.status[6,0] {
	if(chance <= 10){
		return instance_create_layer(x,y,"IF",obj_heart);
              
	}else if chance <= 50{
		return instance_create_layer(x,y,"IF",obj_coin);
	
	}else if chance <= 65{
		return instance_create_layer(x,y,"IF",obj_potion);
	
	}
}else {
	if chance <= 80{
		return instance_create_layer(x,y,"IF",obj_coin);
	
	}
}
