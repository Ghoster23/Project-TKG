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

if(activate_adjacent){
	activate_adjacent = false;
	
	for(var i = 0; i < 8; i++){
		if(adj[i] != noone){
			adj[i].active = true;
		}
	}
}

if(active){
	for(var i = 1; i < grid_size - 1; i++){
		for(var j = 1; j < grid_size - 1; j++){
			if(collision_rectangle(x+(i-1)*cell_size,y+(j-1)*cell_size,x+i*cell_size,y+j*cell_size,obj_slm_cr,true,false)){
				tiles[i,j] = 29.9;
			}else if(global.equiped[7] && collision_rectangle(x+(i-1)*cell_size,y+(j-1)*cell_size,x+i*cell_size,y+j*cell_size,global.body,true,false)){
				tiles[i,j] =    0;
			}
		}
	}
	
	for(var i = 0; i < 8; i++){
		if(adj[i] != noone){
			scr_fluid_tile_req(i);
		}
	}

}