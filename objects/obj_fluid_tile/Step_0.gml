if(not global.gen and not once){
	once = true;
	
	adj[0] = position_meeting(x + 16, y - 16, obj_fluid_tile);
	adj[4] = position_meeting(x + 16, y + 48, obj_fluid_tile);
	adj[2] = position_meeting(x + 48, y + 16, obj_fluid_tile);
	adj[6] = position_meeting(x - 16, y + 16, obj_fluid_tile);
	adj[1] = position_meeting(x - 16, y - 16, obj_fluid_tile);
	adj[3] = position_meeting(x + 48, y + 48, obj_fluid_tile);
	adj[5] = position_meeting(x - 16, y + 48, obj_fluid_tile);
	adj[7] = position_meeting(x - 16, y - 16, obj_fluid_tile);
	
}

if(collision_rectangle(x,y,x+32,y+32,obj_slm_cr,true,false)){
	active = true;
}

if(active){
	for(var i = 1; i < 9; i++){
		for(var j = 1; j < 9; j++){
			if(collision_rectangle(x+(i-1)*4,y+(j-1)*4,x+i*4,y+j*4,obj_slm_cr,true,false)){
				tiles[i,j] = 30;
			}
		}
	}
	
	for(var i = 0; i < 8; i++){
		if(adj[i]){
			scr_fluid_tile_req(i);
		}
	}
	
	show_debug_message(tiles);
}