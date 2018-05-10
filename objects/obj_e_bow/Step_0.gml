if not global.pause {
	if prev_image_speed != 0{
		image_speed = prev_image_speed;
		prev_image_speed = 0;
	}
	
	switch owner.state {
		case 0:
			image_angle = owner.i_dir;
			image_speed = 0;
			image_index = 0;
			
		break;
		case 1:
			image_angle = owner.dir;
			image_speed = 0;
			image_index = 0;
			
		break;
		case 2:
			image_angle = point_direction(x,y,global.body.x,global.body.y);
			
			//atacking
			if owner.shoot{
			    image_speed = 0.2;
				shoot = false;
				
			}
			
			if image_index == 4 {
				var arrow = scr_create_damage_dealer(x,y,owner.stat[stats.atk],stats.def,obj_e_arrow,owner);
				
				owner.cd_arrow = true;
				owner.state = 1;
				owner.alarm[5] = 2 * room_speed;
			}
	
			if image_index >= 5{
				image_speed = 0;
				image_index = 0;
			}
			
		break;
		case 3:
			instance_destroy();
			
		break;
	}
	
}else if prev_image_speed == 0 and image_speed != 0{
	prev_image_speed = image_speed;
	image_speed = 0;
}	