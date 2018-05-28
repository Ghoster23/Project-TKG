if(not global.pause and active){
	switch state {
		//Close
		case 0:
			if image_index > 1{
				image_speed = -0.4;
			}else {
				image_index = 0;
				image_speed = 0;
			}
		
		break;
		//Open
		case 2:			
			if image_index < 5{
				image_speed = 0.9;
				
			}else {
				image_index = 6;
				image_speed = 0;
				
				if alarm[0] == -1 {
					alarm[0] = 0.5 * room_speed;
				}
			}
		
		break;
	}
}

x = phy_position_x;
y = phy_position_y;