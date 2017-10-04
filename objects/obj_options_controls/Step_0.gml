scr_get_input();
mousex = display_mouse_get_x();
mousey = display_mouse_get_y();

//show_debug_message("x "+string(mousex));
//show_debug_message("y "+string(mousey));

if menu_key /*or (point_in_rectangle(mousex,mousey,c-17*m,particles_y1+particles_height+18*m,c+17*m,particles_y1+particles_height+28*m) and attack_key)*/{
	instance_create_layer(x,y,layer,obj_options_controller);
	instance_destroy();
}


if listen_for_key==false{

	if enter_key{
		listen_for_key=true;
	}

	switch state{

		case "up_key":
			if a_up{
				state="dash_key"; 
			}
			if a_down{
				state="left_key";
			}
			if a_right{
				state="interact_key";
			}
			break;
	
		case "left_key":
			if a_up{
				state="up_key"; 
			}
			if a_down{
				state="down_key";
			}
			if a_right{
				state="potion_key";
			}
			break;
		
		case "down_key":
			if a_up{
				state="left_key"; 
			}
			if a_down{
				state="right_key";
			}
			if a_right{
				state="mmap_key";
			}
			break;
		
		case "right_key":
			if a_up{
				state="down_key"; 
			}
			if a_down{
				state="attack_key";
			}
			if a_right{
				state="os_mmap_key";
			}
			break;
		
		case "attack_key":
			if a_up{
				state="right_key"; 
			}
			if a_down{
				state="mouse_r";
			}
			if a_right{
				state="enter_key";
			}
			break;
		
		case "mouse_r":
			if a_up{
				state="attack_key"; 
			}
			if a_down{
				state="dash_key";
			}
			if a_right{
				state="menu_key";
			}
			break;
		
		case "dash_key":
			if a_up{
				state="mouse_r"; 
			}
			if a_down{
				state="up_key";
			}
			if a_right{
				state="menu_key";
			}
			break;
	
		//--------------------------//RIGHT//--------------------------//
	
		case "interact_key":
			if a_up{
				state="menu_key"; 
			}
			if a_down{
				state="potion_key";
			}
			if a_left{
				state="up_key";
			}
			break;
		
		case "potion_key":
			if a_up{
				state="interact_key"; 
			}
			if a_down{ 
				state="mmap_key";
			}
			if a_left{
				state="left_key";
			}
			break;
		
		case "mmap_key":
			if a_up{
				state="potion_key"; 
			}
			if a_down{
				state="os_mmap_key";
			}
			if a_left{
				state="down_key";
			}
			break;
		
		case "os_mmap_key":
			if a_up{
				state="mmap_key"; 
			}
			if a_down{
				state="enter_key";
			}
			if a_left{
				state="right_key";
			}
			break;
		
		case "enter_key":
			if a_up{
				state="os_mmap_key"; 
			}
			if a_down{
				state="menu_key";
			}
			if a_left{
				state="attack_key";
			}
			break;
		
		case "menu_key":
			if a_up{
				state="enter_key"; 
			}
			if a_down{
				state="interact_key";
			}
			if a_left{
				state="mouse_r";
			}
			break;
	}


	if point_in_rectangle(mousex,mousey,up_key_x1,up_key_y1,up_key_x2,up_key_y2+12*m){
		state="up_key";
		if attack_key{
			//nada
		}
	}
	if point_in_rectangle(mousex,mousey,left_key_x1,left_key_y1,left_key_x2,left_key_y2+12*m){
		state="left_key";
		if attack_key{
			//nada
		}
	}
	if point_in_rectangle(mousex,mousey,down_key_x1,down_key_y1,down_key_x2,down_key_y2+12*m){
		state="down_key";
		if attack_key{
			//nada
		}
	}
	if point_in_rectangle(mousex,mousey,right_key_x1,right_key_y1,right_key_x2,right_key_y2+12*m){
		state="right_key";
		if attack_key{
			//nada
		}
	}
	if point_in_rectangle(mousex,mousey,attack_key_x1,attack_key_y1,attack_key_x2,attack_key_y2+12*m){
		state="attack_key";
		if attack_key{
			//nada
		}
	}
	if point_in_rectangle(mousex,mousey,mouse_r_x1,mouse_r_y1,mouse_r_x2,mouse_r_y2+12*m){
		state="mouse_r";
		if attack_key{
			//nada
		}
	}
	if point_in_rectangle(mousex,mousey,dash_key_x1,dash_key_y1,dash_key_x2,dash_key_y2+12*m){
		state="dash_key";
		if attack_key{
			//nada
		}
	}

	//--------------------------//RIGHT//--------------------------//

	if point_in_rectangle(mousex,mousey,interact_key_x1,interact_key_y1,interact_key_x2,interact_key_y2+12*m){
		state="interact_key";
		if attack_key{
			//nada
		}
	}
	if point_in_rectangle(mousex,mousey,potion_key_x1,potion_key_y1,potion_key_x2,potion_key_y2+12*m){
		state="potion_key";
		if attack_key{
			//nada
		}
	}
	if point_in_rectangle(mousex,mousey,mmap_key_x1,mmap_key_y1,mmap_key_x2,mmap_key_y2+12*m){
		state="mmap_key";
		if attack_key{
			//nada
		}
	}
	if point_in_rectangle(mousex,mousey,os_mmap_key_x1,os_mmap_key_y1,os_mmap_key_x2,os_mmap_key_y2+12*m){
		state="os_mmap_key";
		if attack_key{
			//nada
		}
	}
	if point_in_rectangle(mousex,mousey,enter_key_x1,enter_key_y1,enter_key_x2,enter_key_y2+12*m){
		state="enter_key";
		if attack_key{
			//nada
		}
	}
	if point_in_rectangle(mousex,mousey,menu_key_x1,menu_key_y1,menu_key_x2,menu_key_y2+12*m){
		state="menu_key";
		if attack_key{
			//nada
		}
	}
}
else if listen_for_key==true{
	//set the map thingy
	if keyboard_check_pressed(vk_anykey){
		listen_for_key=false;
		event_perform(ev_alarm,0);
	}
}