///@description Spawn drops
randomize();

chance = irandom(99) + 1;

if obj_potion_controller.alarm[0] == -1 {
	if(chance <= 10){
		instance_create_layer(x,y,"IF",obj_heart);
              
	}else if chance <= 60{
		instance_create_layer(x,y,"IF",obj_coin);
	
	}else if chance <= 90{
		instance_create_layer(x,y,"IF",obj_potion);
	
	}
}else {
	if chance <= 80{
		instance_create_layer(x,y,"IF",obj_coin);
	
	}
}