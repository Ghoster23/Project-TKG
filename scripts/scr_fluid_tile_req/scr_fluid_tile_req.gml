{
var dir  = argument0;

var inst = 0;

switch dir {
	case 0:
		inst = instance_position(x + 16, y - 16, obj_fluid_tile);
		
		if(inst != noone){
			for(var k = 1; k < grid_size - 1; k++){
				tiles[k,0] = inst.tiles[k,grid_size - 2];
			}
		}
	break;
	case 2:
		inst = instance_position(x + 48, y + 16, obj_fluid_tile);
		
		if(inst != noone){
			for(var k = 1; k < grid_size - 1; k++){
				tiles[grid_size - 1,k] = inst.tiles[1,k];
			}
		}
	break;
	case 4:
		inst = instance_position(x + 16, y + 48, obj_fluid_tile);
		
		if(inst != noone){
			for(var k = 1; k < grid_size - 1; k++){
				tiles[k,grid_size - 1] = inst.tiles[k,1];
			}
		}
	break;
	case 6:
		inst = instance_position(x - 16, y + 16, obj_fluid_tile);
		
		if(inst != noone){
			for(var k = 1; k < grid_size - 1; k++){
				tiles[0,k] = inst.tiles[grid_size - 2,k];
			}
		}
	break;
	case 7:
		inst = instance_position(x - 16, y - 16, obj_fluid_tile);
		
		if(inst != noone){
			tiles[0,0] = inst.tiles[grid_size - 2,grid_size - 2];
		}
	break;
	case 1:
		inst = instance_position(x + 48, y - 16, obj_fluid_tile);
		
		if(inst != noone){
			tiles[grid_size - 1,0] = inst.tiles[1,grid_size - 2];
		}
	break;
	case 3:
		inst = instance_position(x + 48, y + 48, obj_fluid_tile);
		
		if(inst != noone){
			tiles[grid_size - 1,grid_size - 1] = inst.tiles[1,1];
		}
	break;
	case 5:
		inst = instance_position(x - 16, y + 48, obj_fluid_tile);
		
		if(inst != noone){
			tiles[0,grid_size - 1] = inst.tiles[grid_size - 2,1];
		}
	break;
}

return noone;

}