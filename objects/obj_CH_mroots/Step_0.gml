if not global.pause {
	part_particles_create(global.ps_if, x, y, global.pt_CHdirt, 5);
	
	if prev_image_speed != 0{
		image_speed = prev_image_speed;
		prev_image_speed = 0;
	}

	switch state{
		case 0:
			dir = point_direction(x,y,global.body.x,global.body.y);
            
			//Get hspd and vspd
			hspd = lengthdir_x(6,dir);
			vspd = lengthdir_y(6,dir);
           
			phy_position_x += hspd;
			phy_position_y += vspd;
		
			if distance_to_object(global.body) < 10{
				state = 1;
			}
		break;
		case 1:
			visible = true;
			image_speed = 0.8;
		
			if image_index >= 8{
				image_speed = 0;
				image_index = 9;
				state = 2;
			}
		
			if place_meeting(x,y,global.body) and global.p_hurt == false and global.p_inv == false{
				global.p_hp -= global.b_atk div global.p_def;
				global.p_hurt = true;
			}
		break;
		case 2:
			image_speed = -0.8;
		
			if image_index <= 1{
				image_index = 0;
				visible = false;
				state = 0;
			}
		break;
	}
	
}else {
	if image_speed != 0{
		prev_image_speed = image_speed;
		image_speed = 0;
		
	}
	
}