if(global.key_active[key_id.menu] or 
	scr_GUI_button(hc-17*m,hc+17*m,particles_width+20*m,particles_height+30*m)){
	instance_create_layer(x,y,layer,obj_options_controller);
	instance_destroy();
}

switch state{

	case "fullscreen":
		if global.key_active[key_id.m_left] or global.key_active[key_id.m_right] or global.key_active[key_id.m_confirm] { 
			event_perform(ev_alarm,0);
		}
		if global.key_active[key_id.m_down]                         {
			state = "screenshake";
		}
		if global.key_active[key_id.m_up]                           {
			state = "particles";
		}
		break;
	
	case "screenshake":
		if global.key_active[key_id.m_left] {
			switch global.screenshake {
				case "none":
					global.screenshake = "high";
				break;
	
				case "low":
					global.screenshake = "none"
				break;
	
				case "normal":
					global.screenshake = "low";
				break;
	
				case "high":
					global.screenshake = "normal"
				break;
			}
		}
		if global.key_active[key_id.m_right] or global.key_active[key_id.m_confirm] {
			event_perform(ev_alarm,1);
		}
		if global.key_active[key_id.m_down]               {
			state="textscroll";
		}
		if global.key_active[key_id.m_up]                 {
			state="fullscreen";
		}
		break;
	
	case "textscroll":
		if global.key_active[key_id.m_left] {
			switch global.textscroll {
				case "low":
					global.textscroll = "high";
				break;
	
				case "normal":
					global.textscroll = "low"
				break;
	
				case "high":
					global.textscroll = "normal";
				break;
			}
		}
		if global.key_active[key_id.m_right] or global.key_active[key_id.m_confirm] {
			event_perform(ev_alarm,2);
		}
		if global.key_active[key_id.m_down] {
			state = "particles";
		}
		if global.key_active[key_id.m_up] {
			state = "screenshake";
		}
		break;
	
	case "particles":
		if global.key_active[key_id.m_left] {
			switch global.particles {
				case "none":
					global.particles = "normal";
				break;
	
				case "low":
					global.particles = "none"
				break;
	
				case "normal":
					global.particles = "low";
				break;
			}
		}
		if global.key_active[key_id.m_right] or global.key_active[key_id.m_confirm] {
			event_perform(ev_alarm,3);
		}
		if global.key_active[key_id.m_down] {
			state = "fullscreen";
		}
		if global.key_active[key_id.m_up]   {
			state = "textscroll";
		}
		break;
}

var fls = scr_GUI_h_button_check(fullscreen_x1,fullscreen_y1,fullscreen_width,fullscreen_height+12*m);
if fls {
	state = "fullscreen";
	if fls == 1 {
		alarm[0] = room_speed*0.1;
	}
}

var ss = scr_GUI_h_button_check(screenshake_x1,screenshake_y1,screenshake_width,screenshake_height+12*m);
if ss {
	state = "screenshake";
	if ss == 1 {
		alarm[1] = room_speed*0.1;
	}
}

var ts = scr_GUI_h_button_check(textscroll_x1,textscroll_y1,textscroll_width,textscroll_height+12*m);
if ts {
	state = "textscroll";
	if ts {
		alarm[2] = room_speed*0.1;
	}
}

var pt = scr_GUI_h_button_check(particles_x1,particles_y1,particles_width,particles_height+12*m);
if pt {
	state = "particles";
	if pt == 1 {
		alarm[3] = room_speed*0.1;
	}
}