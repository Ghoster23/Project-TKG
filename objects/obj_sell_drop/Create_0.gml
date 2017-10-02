randomize();
image_speed = 0;

if((irandom(99) + 1) <= 10){
	sprite_index = spr_heart;
	x += 8;
	y += 8;
	
	image_index = irandom_range(1,4);
              
}else if (irandom(99) + 1) <= 40{
	sprite_index = spr_coin;
	x += 8;
	y += 8;
	
}

sprite_index = spr_heart;

switch sprite_index {
	case spr_heart:
		cost = 2 * image_index;
		
	break;
	
	case spr_coin:
		cost = 5;
		
	break;
}