///@description Spawn drops
randomize();

chance = irandom(99) + 1;

if(not global.body.stuck){ //FIX ME
	if(chance <= 10){
		return scr_spawn_item(   item_type.heart,  0,  -4, x, y, true, false);
              
	}else if chance <= 50{
		return scr_spawn_item(item_type.currency,  0, -16, x, y, true, false);
	
	}else if chance <= 65{
		return scr_spawn_item( item_type.potion , -7,  -3, x, y, true, false);
	
	}
}else {
	if chance <= 80{
		return scr_spawn_item(item_type.currency,  0, -16, x, y, true, false);
	
	}
}
