///@description Applies statuses based on unique consumables
{
switch(argument0) {
	case unique_consume.eat_me:
		
	break;
	case unique_consume.blue_pancake:
		
	break;
	case unique_consume.map:
		for(var i = 0; i < 64; i++){
			if(global.ds_roomgrid[# 1, i] != "NULL"){
				global.ds_roomgrid[# 2, i] = true;
			}
		}
	break;
	default:
	break;
}
}