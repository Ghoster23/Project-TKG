//Target
switch room {
	case rm_level:
		if(target == noone){
			var xx = global.body.phy_position_x;
			var yy = global.body.phy_position_y;
			var rx = (global.current_col + 0.5) * dr_wd;
			var ry = (global.current_row + 0.5) * dr_hg;
			var dx = abs(rx - xx);
			var dy = abs(ry - yy);
			
			var dir = point_direction(rx,ry,xx,yy);
			
			cam_x_t = rx + (dx / (dr_wd/2)) * 32 * cos(degtorad(dir));
			cam_y_t = ry - (dy / (dr_hg/2)) * 32 * sin(degtorad(dir));
			
		}else if(instance_exists(target)){
			cam_x_t = target.x;
			cam_y_t = target.y;
		}
		
	break;
	
	case rm_CH_boss:
		cam_x_t = room_width div 2;
		
		if(instance_exists(global.body)){
			cam_y_t = global.body.y;
		}
	break;
	
	case rm_dead:
		instance_destroy();
	break;
	
	case rm_lvl_editor_test :
	
	break;
	
	default:
		if(instance_exists(target)){
			cam_x_t = room_width div 2;
			cam_y_t = room_height div 2;
		}
	break;
}

//Movement State
switch m_state {
	case 0: //Stopped
		if(cam_x_t != x || cam_y_t != y){
			m_state = 1;
		}
	break;
	
	case 1: //Move
		if(abs(cam_x_t - x) < 0.01 && abs(cam_y_t - y) < 0.01){
			x = cam_x_t;
			y = cam_y_t;
			
			cam_x_c = x;
			cam_y_c = y;
			
			m_state = 0;
		}
	break;
}