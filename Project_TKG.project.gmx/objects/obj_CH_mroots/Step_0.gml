part_particles_create(global.ps, x, y, global.pt_CHdirt, 5);

switch state{
	case 0:
		dir = point_direction(x,y,obj_body.x,obj_body.y);
            
		//Get hspd and vspd
		hspd = lengthdir_x(6,dir);
		vspd = lengthdir_y(6,dir);
           
		phy_position_x += hspd;
		phy_position_y += vspd;
		
		if distance_to_object(obj_body) < 10{
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
		
		if place_meeting(x,y,obj_body) and global.p_inv == false and global.invuln == false{
			global.p_hp -= 3 div global.p_def;
			global.p_inv = true;
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