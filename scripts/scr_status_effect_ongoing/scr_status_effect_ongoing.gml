///@description Executes effect of status on entity
///@param Status
{
var status = argument0;
	
switch(status){
	default:
	break;
	
	case statuses.burning :
		if(stat[stats.hp] > 0){
			stat[stats.hp] -= 1;
		}
	break;
	
	case statuses.poison :				
		if(stat[stats.hp] > 0){
			stat[stats.hp] -= 2;
		}
	break;
	
	case statuses.regen :
		if(stat[stats.hp] < stat[stats.mhp]){
			stat[stats.hp] += 1;
		}
	break;
	
	case statuses.seeall :
		with(obj_hidden_enemy_parent){
			if(hidden and distance_to_object(global.body) < 256 and not place_meeting(x,y,obj_see_all_tell)){
				var mark = instance_create_layer(x,y,"IF",obj_see_all_tell);
				mark.marked = id;
			}
		}
	break;
	
}
}