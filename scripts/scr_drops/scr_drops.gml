///@description Spawn drops
randomize();

if((irandom(99) + 1) <= 10){
	instance_create_layer(x,y,"IF",obj_heart);
              
}else if (irandom(99) + 1) <= 40{
	instance_create_layer(x,y,"IF",obj_coin);
}