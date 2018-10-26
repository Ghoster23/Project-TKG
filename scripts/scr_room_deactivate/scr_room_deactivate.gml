///@description Deactivates a room
//Walls
for(var i = 0; i < 4; i++){
	for(var j = 0; j < 2; j++){
		var side = walls[i];
		instance_deactivate_object(side[j]);
	}
}

//Floor
instance_deactivate_object(walls[4]);
	
//Content
for(var i = 0; i < ctt_cnt; i++){
	instance_deactivate_object(content[i]);
}
			
//Decor
for(var i = 0; i < d_cnt; i++){
	instance_deactivate_object(decor[i]);
}
			
//Corridors
for(var i = 0; i < 4; i++){
	instance_deactivate_object(corridors[i]);
}