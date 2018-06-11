//Target
switch room {
	case rm_level:
		if(room == rm_level){
			if(target == noone){
				cam_x_t = (0.5 + global.current_column) * global.roomwd;
				cam_y_t = (0.5 + global.current_row)    * global.roomhg - 16;
			}else if(instance_exists(target)){
				cam_x_t = target.x;
				cam_y_t = target.y;
			}
		}
	break;
	
	case rm_CH_boss:
		cam_x_t = room_width div 2;
		cam_y_t = global.body.y;
	break;
	
	case rm_dead:
		instance_destroy();
	break;
	
	default:
		if(instance_exists(target)){
			cam_x_t = target.x;
			cam_y_t = target.y;
		}
	break;
}

//Movement State
switch m_state {
	case 0: //Stopped
		if(cam_x_t != x || cam_y_t != y){
			m_state = 1;
			
			global.shake = 0;
			
		}else if(global.shake != 0){
			m_state = 2;
			
		}
	break;
	
	case 1: //Move
		if(abs(cam_x_t - x) < 0.5 && abs(cam_y_t - y) < 0.5){
			x = cam_x_t;
			y = cam_y_t;
			
			cam_x_c = x;
			cam_y_c = y;
			
			m_state = 0;
		}
	break;
	
	case 2: //Shake
		if(global.shake == 0){
			m_state = 0;
		}
	break;
}