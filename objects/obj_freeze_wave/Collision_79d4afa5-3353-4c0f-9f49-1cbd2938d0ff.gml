if(other.active){
	with other {
		var count = 0;
	
		for(var i = 0; i < array_len; i++){
			var type  = tiles[i] div 30;
		
			if(type == 1 || type == 3){
				tiles[i] = 119;
				count++;
			}
		}
	
		if(count / array_len > 0.65){
			instance_create_layer(x,y,"Instances",obj_ice_cube);
		}
	}
}