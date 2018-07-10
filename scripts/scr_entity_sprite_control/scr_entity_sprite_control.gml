///@description determines entity sprite based on direction
///@param sprites
///@param dir
///@param mode
{
var sprs = argument0;
var dir  = argument1;
var mode = argument2;

var ori  = scr_orientate_entity(dir);

if(is_array(sprs)){
	if(array_length_1d(sprs) == 4){
		sprite_index = sprs[ori];
	}else {
		//Change sprites
		switch ori {
			case 0: //Rigt
				image_xscale = 1;
				sprite_index = sprs[0];
			break;
			case 1: //Up
				sprite_index = sprs[1];
			break;
			case 2: //Left
				image_xscale = -1;
				sprite_index = sprs[0];
			break;
			case 3: //Down
				sprite_index = sprs[2];
			break;
		}
	}
}else {
	if(mode){
		sprite_index = sprs;
	
		switch ori {
			case 0: //Rigt
				image_xscale =  1;
			break;
			case 1: //Up
			break;
			case 2: //Left
				image_xscale = -1;
			break;
			case 3: //Down
			break;
		}
	}else {
		sprite_index = sprs;
		image_index  = ori;
		image_xscale = 1;
	}
}
}