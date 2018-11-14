///@description Applies statuses based on unique consumables
{
switch(argument0) {
	case unique_consume.eat_me:
		
	break;
	case unique_consume.blue_pancake:
		
	break;
	case unique_consume.map:
		with obj_map_controller {
			for(var i = 0; i < dg_space; i++){
				var info = dungeon_layout[i];
				
				if(info != -1){
					switch info[2] {
						case 0: //Not visited				
						case 1: //Not visited but connects to a visited room
							scr_map_set_room(-1,-1,2,i);
						break;
					}
				}
			}
		}
	break;
	default:
	break;
}
}