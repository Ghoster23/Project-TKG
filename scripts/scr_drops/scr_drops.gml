///@description Spawn drops
{
randomize();

var spawns;
spawns[0] = -1;
spawns[1] = -1;

var chance = irandom(99) + 1;

if(chance <= 10){
	spawns[0] = scr_spawn_item(   item_type.heart,  -1,  -4, x, y, true, false);
              
}else if chance <= 50{
	var count = irandom(15) + 1;
	
	spawns[0] = scr_spawn_item(item_type.currency, 0, 1, x, y, true, true);
	
	for(var i = 0; i < count - 1; i++){
		scr_spawn_item(item_type.currency, 0, 1, x, y, true, true);
	}
	
}else if chance <= 65{
	spawns[0] = scr_spawn_item( item_type.potion , -7,  -3, x, y, true, true);
	
}

chance = irandom(99) * global.body.stat[stats.luck];

if(chance >= 90){
	chance = irandom(99);
	
	if(chance <= 10){
		spawns[1] = scr_spawn_item( item_type.heart, heart.heart,  -4, x, y, true, true);
              
	}else if chance <= 50{
		spawns[1] = scr_spawn_item( item_type.currency, 0, 1, x, y, true, true);
	
	}else if chance <= 65{
		spawns[1] = scr_spawn_item( item_type.potion , -7, -3, x, y, true, true);
	
	}
}

return spawns;
}