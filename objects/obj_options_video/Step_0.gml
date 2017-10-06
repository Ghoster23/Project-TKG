scr_get_input();

mousex = display_mouse_get_x();
mousey = display_mouse_get_y();

//show_debug_message("x "+string(mousex));
//show_debug_message("y "+string(mousey));

if menu_key or (point_in_rectangle(mousex,mousey,c-17*m,particles_y1+particles_height+18*m,c+17*m,particles_y1+particles_height+28*m) and mouse_click){
	instance_create_layer(x,y,layer,obj_options_controller);
	instance_destroy();
}

switch state{

	case "fullscreen":
		if a_left or a_right or enter_key{ 
			event_perform(ev_alarm,0);
		}
		if a_down{
			state="screenshake";
		}
		if a_up{
			state="particles";
		}
		break;
	
	case "screenshake":
		if a_left{
			switch global.screenshake{
				case "none":
					global.screenshake="high";
				break;
	
				case "low":
					global.screenshake="none"
				break;
	
				case "normal":
					global.screenshake="low";
				break;
	
				case "high":
					global.screenshake="normal"
				break;
			}
		}
		if a_right or enter_key{
			event_perform(ev_alarm,1);
		}
		if a_down{
			state="textscroll";
		}
		if a_up{
			state="fullscreen";
		}
		break;
	
	case "textscroll":
		if a_left{
			switch global.textscroll{
				case "low":
					global.textscroll="high";
				break;
	
				case "normal":
					global.textscroll="low"
				break;
	
				case "high":
					global.textscroll="normal";
				break;
			}
		}
		if a_right or enter_key{
			event_perform(ev_alarm,2);
		}
		if a_down{
			state="particles";
		}
		if a_up{
			state="screenshake";
		}
		break;
	
	case "particles":
		if a_left{
			switch global.particles{
				case "none":
					global.particles="normal";
				break;
	
				case "low":
					global.particles="none"
				break;
	
				case "normal":
					global.particles="low";
				break;
			}
		}
		if a_right or enter_key{
			event_perform(ev_alarm,3);
		}
		if a_down{
			state="fullscreen";
		}
		if a_up{
			state="textscroll";
		}
		break;
}


if point_in_rectangle(mousex,mousey,fullscreen_x1,fullscreen_y1,fullscreen_x2,fullscreen_y2+12*m){
	state="fullscreen";
	if mouse_click{
		alarm[0]=room_speed*0.1;
	}
}
if point_in_rectangle(mousex,mousey,screenshake_x1,screenshake_y1,screenshake_x2,screenshake_y2+12*m){
	state="screenshake";
	if mouse_click{
		alarm[1]=room_speed*0.1;
	}
}
if point_in_rectangle(mousex,mousey,textscroll_x1,textscroll_y1,textscroll_x2,textscroll_y2+12*m){
	state="textscroll";
	if mouse_click{
		alarm[2]=room_speed*0.1;
	}
}
if point_in_rectangle(mousex,mousey,particles_x1,particles_y1,particles_x2,particles_y2+12*m){
	state="particles";
	if mouse_click{
		alarm[3]=room_speed*0.1;
	}
}


