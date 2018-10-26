#region Check Region
if(instance_exists(global.body)){
	for(var i = 0; i < region_count; i++){
		if(i != region_count - 1){
			var bds = borders[i];
	
			var px = global.body.phy_position_x;
			var py = global.body.phy_position_y;
	
			if(bds[0] < px and px < bds[2] and
			   bds[1] < py and py < bds[3]){
				global.region = i + 1;
				break;
			}
		}else {
			global.region = 0;
		}
	}
}
#endregion

switch state {
	case 0: //Initialize
	break;
	
	case 1: //OK
		if(global.region != p_region){
			p_region = global.region;
			state    = 0;
		}
	break;
}