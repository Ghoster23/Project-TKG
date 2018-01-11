{
var dir  = argument0;

var inst = 0;

switch dir {
	case 0:
		inst = instance_position(x + 16, y - 16, obj_fluid_tile);
		
		if(inst != noone){
			for(var k = 1; k < 9; k++){
				tiles[k,0] = inst.tiles[k,8];
			}
		}
	break;
	case 2:
		inst = instance_position(x + 48, y + 16, obj_fluid_tile);
		
		if(inst != noone){
			for(var k = 1; k < 9; k++){
				tiles[9,k] = inst.tiles[1,k];
			}
		}
	break;
	case 4:
		inst = instance_position(x + 16, y + 48, obj_fluid_tile);
		
		if(inst != noone){
			for(var k = 1; k < 9; k++){
				tiles[k,9] = inst.tiles[k,1];
			}
		}
	break;
	case 6:
		inst = instance_position(x - 16, y + 16, obj_fluid_tile);
		
		if(inst != noone){
			for(var k = 1; k < 9; k++){
				tiles[0,k] = inst.tiles[8,k];
			}
		}
	break;
	case 7:
		inst = instance_position(x - 16, y - 16, obj_fluid_tile);
		
		if(inst != noone){
			tiles[0,0] = inst.tiles[8,8];
		}
	break;
	case 1:
		inst = instance_position(x + 48, y - 16, obj_fluid_tile);
		
		if(inst != noone){
			tiles[9,0] = inst.tiles[1,8];
		}
	break;
	case 3:
		inst = instance_position(x + 48, y + 48, obj_fluid_tile);
		
		if(inst != noone){
			tiles[9,9] = inst.tiles[1,1];
		}
	break;
	case 5:
		inst = instance_position(x - 16, y + 48, obj_fluid_tile);
		
		if(inst != noone){
			tiles[0,9] = inst.tiles[8,1];
		}
	break;
}

return noone;

}