///@description Spawn drops
{
randomize();

var drop = scr_determine_drop();

if(drop != -1){
	var i = 0;
	var spawns = [];
	
	if(drop[0] != item_type.heart){
		repeat drop[2] {
			spawns[i] = scr_spawn_item( drop[0], drop[1], 1, x, y, true, true);
			i++;
		}
	}else {
		spawns[i] = scr_spawn_item( drop[0], drop[1], drop[2], x, y, true, true);
	}
			
	return spawns;
}

return noone;
}