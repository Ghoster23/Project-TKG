//ADJ
if(not global.gen and not once){
	once = true;
	
	adj[0] = instance_place(x + 16, y - 16, obj_fluid_tile);
	adj[4] = instance_place(x + 16, y + 48, obj_fluid_tile);
	adj[2] = instance_place(x + 48, y + 16, obj_fluid_tile);
	adj[6] = instance_place(x - 16, y + 16, obj_fluid_tile);
	adj[1] = instance_place(x - 16, y - 16, obj_fluid_tile);
	adj[3] = instance_place(x + 48, y + 48, obj_fluid_tile);
	adj[5] = instance_place(x - 16, y + 48, obj_fluid_tile);
	adj[7] = instance_place(x - 16, y - 16, obj_fluid_tile);
	
}

//Activation
if(activate_adjacent){
	activate_adjacent = false;
	
	for(var i = 0; i < 8; i++){
		if(adj[i] != noone){
			adj[i].active = true;
		}
	}
}

if(active){
	for(var i = 0; i < grid_size; i++){
		for(var j = 0; j < grid_size; j++){
			if(collision_rectangle(x+(i-1)*cell_size,y+(j-1)*cell_size,x+i*cell_size,y+j*cell_size,obj_slm_cr,true,false)){
				tiles[i * grid_size + j] = 29;
			}else if(global.erase && collision_rectangle(x+(i-1)*cell_size,y+(j-1)*cell_size,x+i*cell_size,y+j*cell_size,global.body,true,false)){
				tiles[i * grid_size + j] =  0;
			}else if(collision_rectangle(x+(i-1)*cell_size,y+(j-1)*cell_size,x+i*cell_size,y+j*cell_size,obj_hspider,true,false)){
				tiles[i * grid_size + j] = 59;
			}
		}
	}
}