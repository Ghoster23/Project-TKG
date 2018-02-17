scr_get_input();

//show_debug_message("x "+string(mousex));
//show_debug_message("y "+string(mousey));

if listen_for_key==false{

	if menu_key or (point_in_rectangle(mousex,mousey,c-17*m,reset_y1+reset_height+20*m,c+17*m,reset_y1+reset_height+30*m) and mouse_click){
		instance_create_layer(x,y,layer,obj_options_controller);
		instance_destroy();
	}

	if enter_key and state!="reset"{
		listen_for_key=true;
	}

	switch state{

		case "up_key":
			if a_up    {
				state = "dash_key"; 
			}
			if a_down  {
				state = "left_key";
			}
			if a_right {
				state = "interact_key";
			}
			break;
	
		case "left_key":
			if a_up    {
				state = "up_key"; 
			}
			if a_down  {
				state = "down_key";
			}
			if a_right {
				state = "consumable_key";
			}
			break;
		
		case "down_key":
			if a_up    {
				state = "left_key"; 
			}
			if a_down  {
				state = "right_key";
			}
			if a_right {
				state = "mmap_key";
			}
			break;
		
		case "right_key":
			if a_up    {
				state = "down_key"; 
			}
			if a_down  {
				state = "attack_key";
			}
			if a_right {
				state = "os_mmap_key";
			}
			break;
		
		case "attack_key":
			if a_up    {
				state = "right_key"; 
			}
			if a_down  {
				state = "mouse_r";
			}
			if a_right {
				state = "enter_key";
			}
			break;
		
		case "mouse_r":
			if a_up    {
				state = "attack_key"; 
			}
			if a_down  {
				state = "dash_key";
			}
			if a_right {
				state = "menu_key";
			}
			break;
		
		case "dash_key":
			if a_up    {
				state = "mouse_r"; 
			}
			if a_down  {
				state = "up_key";
			}
			if a_right {
				state = "menu_key";
			}
			break;
	
		//--------------------------//RIGHT//--------------------------//
	
		case "interact_key":
			if a_up    {
				state = "menu_key"; 
			}
			if a_down  {
				state = "consumable_key";
			}
			if a_left  {
				state = "up_key";
			}
			break;
		
		case "consumable_key":
			if a_up    {
				state = "interact_key"; 
			}
			if a_down  { 
				state = "mmap_key";
			}
			if a_left  {
				state = "left_key";
			}
			break;
		
		case "mmap_key":
			if a_up    {
				state = "consumable_key"; 
			}
			if a_down  {
				state = "os_mmap_key";
			}
			if a_left  {
				state = "down_key";
			}
			break;
		
		case "os_mmap_key":
			if a_up    {
				state = "mmap_key"; 
			}
			if a_down  {
				state = "enter_key";
			}
			if a_left  {
				state = "right_key";
			}
			break;
		
		case "enter_key":
			if a_up    {
				state = "os_mmap_key"; 
			}
			if a_down  {
				state = "menu_key";
			}
			if a_left  {
				state = "attack_key";
			}
			break;
		
		case "menu_key":
			if a_up    {
				state = "enter_key"; 
			}
			if a_down  {
				state = "reset";
			}
			if a_left  {
				state = "mouse_r";
			}
			break;
			
		case "reset":
			if a_up      {
				state = "menu_key"; 
			}
			if a_down    {
				state = "interact_key";
			}
			if a_left    {
				state = "dash_key";
			}
			if enter_key {
				ini_open("saveoptions.ini");
				global.right_key_bind      = ord("D");
				global.left_key_bind       = ord("A");
				global.down_key_bind       = ord("S");
				global.up_key_bind         = ord("W");
				global.dash_key_bind       = vk_shift;
				global.attack_key_bind     = mb_left;
				global.mouse_r_key_bind    = mb_right;
				global.interact_key_bind   = ord("F");
				global.consumable_key_bind = ord("E");
				global.menu_key_bind       = vk_escape;
				global.mmap_key_bind       = ord("M");
				global.os_mmap_key_bind    = vk_tab;
				global.enter_key_bind      = vk_enter;
				
				ini_write_real("controls",      "right_key", global.right_key_bind);
				ini_write_real("controls",       "left_key", global.left_key_bind);
				ini_write_real("controls",       "down_key", global.down_key_bind);
				ini_write_real("controls",         "up_key", global.up_key_bind);
				ini_write_real("controls",       "dash_key", global.dash_key_bind);
				ini_write_real("controls",     "attack_key", global.attack_key_bind);
				ini_write_real("controls",    "mouse_r_key", global.mouse_r_key_bind);
				ini_write_real("controls",   "interact_key", global.interact_key_bind);
				ini_write_real("controls", "consumable_key", global.consumable_key_bind);
				ini_write_real("controls",       "menu_key", global.menu_key_bind);
				ini_write_real("controls",       "mmap_key", global.mmap_key_bind);
				ini_write_real("controls",    "os_mmap_key", global.os_mmap_key_bind);
				ini_write_real("controls",      "enter_key", global.enter_key_bind);
				ini_close();
				state = "reset";
			}
			break;
	}


	if point_in_rectangle(mousex,mousey,up_key_x1,up_key_y1,up_key_x2,up_key_y2+12*m){
		state="up_key";
		if mouse_click {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,left_key_x1,left_key_y1,left_key_x2,left_key_y2+12*m){
		state="left_key";
		if mouse_click {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,down_key_x1,down_key_y1,down_key_x2,down_key_y2+12*m){
		state="down_key";
		if mouse_click {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,right_key_x1,right_key_y1,right_key_x2,right_key_y2+12*m){
		state = "right_key";
		if mouse_click {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,attack_key_x1,attack_key_y1,attack_key_x2,attack_key_y2+12*m){
		state = "attack_key";
		if mouse_click {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,mouse_r_x1,mouse_r_y1,mouse_r_x2,mouse_r_y2+12*m){
		state = "mouse_r";
		if mouse_click {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,dash_key_x1,dash_key_y1,dash_key_x2,dash_key_y2+12*m){
		state = "dash_key";
		if mouse_click {
			listen_for_key = true;
		}
	}

	//--------------------------//RIGHT//--------------------------//

	if point_in_rectangle(mousex,mousey,interact_key_x1,interact_key_y1,interact_key_x2,interact_key_y2+12*m){
		state="interact_key";
		if mouse_click {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,consumable_key_x1,consumable_key_y1,consumable_key_x2,consumable_key_y2+12*m){
		state = "consumable_key";
		if mouse_click {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,mmap_key_x1,mmap_key_y1,mmap_key_x2,mmap_key_y2+12*m){
		state = "mmap_key";
		if mouse_click{
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,os_mmap_key_x1,os_mmap_key_y1,os_mmap_key_x2,os_mmap_key_y2+12*m){
		state = "os_mmap_key";
		if mouse_click {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,enter_key_x1,enter_key_y1,enter_key_x2,enter_key_y2+12*m){
		state = "enter_key";
		if mouse_click{
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,menu_key_x1,menu_key_y1,menu_key_x2,menu_key_y2+12*m){
		state = "menu_key";
		if mouse_click {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,reset_x1,reset_y1,reset_x2,reset_y2+12*m){
		state = "reset";
		if mouse_click {
			ini_open("saveoptions.ini");
			global.right_key_bind      = ord("D");
			global.left_key_bind       = ord("A");
			global.down_key_bind       = ord("S");
			global.up_key_bind         = ord("W");
			global.dash_key_bind       = vk_shift;
			global.attack_key_bind     = mb_left;
			global.mouse_r_key_bind    = mb_right;
			global.interact_key_bind   = ord("F");
			global.consumable_key_bind = ord("E");
			global.menu_key_bind       = vk_escape;
			global.mmap_key_bind       = ord("M");
			global.os_mmap_key_bind    = vk_tab;
			global.enter_key_bind      = vk_enter;
			
			ini_write_real("controls",      "right_key", global.right_key_bind);
			ini_write_real("controls",       "left_key", global.left_key_bind);
			ini_write_real("controls",       "down_key", global.down_key_bind);
			ini_write_real("controls",         "up_key", global.up_key_bind);
			ini_write_real("controls",       "dash_key", global.dash_key_bind);
			ini_write_real("controls",     "attack_key", global.attack_key_bind);
			ini_write_real("controls",    "mouse_r_key", global.mouse_r_key_bind);
			ini_write_real("controls",   "interact_key", global.interact_key_bind);
			ini_write_real("controls", "consumable_key", global.consumable_key_bind);
			ini_write_real("controls",       "menu_key", global.menu_key_bind);
			ini_write_real("controls",       "mmap_key", global.mmap_key_bind);
			ini_write_real("controls",    "os_mmap_key", global.os_mmap_key_bind);
			ini_write_real("controls",      "enter_key", global.enter_key_bind);
			ini_close();
		}
	}
}
else if listen_for_key {
	//set the map thingy
	if keyboard_check_pressed(vk_anykey){
		scr_keybind("keyboard");
		alarm[0] = 0.2 * room_speed;
	}
	if mouse_check_button_pressed(mb_any){
		scr_keybind("mouse");
		alarm[0] = 0.2 * room_speed;
	}
}