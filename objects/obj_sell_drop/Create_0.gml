randomize();
image_speed = 0;

if((irandom(99) + 1) <= 10){
	sprite_index = spr_heart;
	
	image_index = irandom_range(1,4);
              
}else if (irandom(99) + 1) <= 40{
	sprite_index = spr_coin;
	
}

switch sprite_index {
	case spr_heart:
		cost = 2 * image_index;
		
	break;
	
	case spr_coin:
		cost = 5;
		
	break;
}