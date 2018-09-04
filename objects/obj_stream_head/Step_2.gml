/*if(node_count > 0){
	var node = node_list[| 0];
	
	while(!instance_exists(node)){
		ds_list_delete(node_list,0);
		node_count--;
		
		node = node_list[| 0];
		
		if(node_count == 0){
			node = noone;
			break;
		}
	}
	
	if(node != noone){
		p_xx = node.phy_position_x;
		p_yy = node.phy_position_y;
	}
}*/

for(var i = 0; i < node_count; i++){
	var node = node_list[| i];
	
	if(instance_exists(node)){
		var xx = node.phy_position_x;
		var yy = node.phy_position_y;
		
		//if(point_distance(xx,yy,p_xx,p_yy) < 128){
			path_add_point(stream_path,xx,yy,10);
			
			//p_xx = xx;
			//p_yy = yy;
		/*}else {
			var n_h = instance_create_layer(x,y,layer,object_index);
			
			var j = 0;
			
			for(j = 0; j < i; j++){
				ds_list_add(n_h.node_list,node_list[| j]);
				ds_list_delete(node_list,j);
				node_count--;
				n_h.node_count++;
			}
			
			i -= j;
			
			n_h.destroyed = true;
		}*/
	}else {
		ds_list_delete(node_list,i);
		node_count--;
		i--;
	}
}

if(destroyed){
	sprite_index = -1;
	
	if(node_count == 0){
		path_delete(stream_path);
		instance_destroy();
	}
}else {
	path_add_point(stream_path,x,y,10);
}