///@description Spawn drops
{
randomize();

var drop = scr_determine_drop();

if(drop != -1){
	var spawn = scr_spawn_item(drop[0],drop[1],drop[2], x, y, true, true);

	return spawn;
}

return noone;
}