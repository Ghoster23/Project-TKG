///@description Spawn drops
{
randomize();

var drop = scr_determine_drop();

if(drop != -1){
	switch drop[0] {
		default:
			var spawn = scr_spawn_item( drop[0], drop[1], drop[2], x, y, true, true);

			return spawn;
		break;
		
		case item_type.currency:
			var i = 0;
			var spawns = [];
			repeat drop[2] {
				spawns[i] = scr_spawn_item( drop[0], drop[1], 1, x, y, true, true);
				i++;
			}
			
			return spawns;
		break;
	}
}

return noone;
}