{
var dir  = argument0;

var inst = adj[dir];

if(inst != noone){
	switch dir {
		case 0:
			for(var k = 1; k < grid_size - 1; k++){
				tiles[k,0] = inst.tiles[k,grid_size - 2];
			}
		break;
		case 2:			
			for(var k = 1; k < grid_size - 1; k++){
				tiles[grid_size - 1,k] = inst.tiles[1,k];
			}
		break;
		case 4:
			for(var k = 1; k < grid_size - 1; k++){
				tiles[k,grid_size - 1] = inst.tiles[k,1];
			}
		break;
		case 6:
			for(var k = 1; k < grid_size - 1; k++){
				tiles[0,k] = inst.tiles[grid_size - 2,k];
			}
		break;
		case 7:
			tiles[0,0] = inst.tiles[grid_size - 2,grid_size - 2];
		break;
		case 1:
			tiles[grid_size - 1,0] = inst.tiles[1,grid_size - 2];
		break;
		case 3:		
			tiles[grid_size - 1,grid_size - 1] = inst.tiles[1,1];
		break;
		case 5:		
			tiles[0,grid_size - 1] = inst.tiles[grid_size - 2,1];
		break;
	}
}
}