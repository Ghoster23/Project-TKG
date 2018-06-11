mousex = obj_cursor.x;
mousey = obj_cursor.y;

if listen_for_key==false{

	if(global.key_active[key_id.menu] or 
	   scr_GUI_button(c-17*m,c+17*m,reset_width+20*m,reset_height+30*m)){
		instance_create_layer(x,y,layer,obj_options_controller);
		instance_destroy();
	}

	if global.key_active[key_id.m_confirm] and state != "reset"{
		listen_for_key = true;
	}

	switch state{

		case "up_key":
			if global.key_active[key_id.m_up]    {
				state = "dash_key"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "left_key";
			}
			if global.key_active[key_id.m_right] {
				state = "interact_key";
			}
			break;
	
		case "left_key":
			if global.key_active[key_id.m_up]    {
				state = "up_key"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "down_key";
			}
			if global.key_active[key_id.m_right] {
				state = "consumable_key";
			}
			break;
		
		case "down_key":
			if global.key_active[key_id.m_up]    {
				state = "left_key"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "right_key";
			}
			if global.key_active[key_id.m_right] {
				state = "mmap_key";
			}
			break;
		
		case "right_key":
			if global.key_active[key_id.m_up]    {
				state = "down_key"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "attack_key";
			}
			if global.key_active[key_id.m_right] {
				state = "os_mmap_key";
			}
			break;
		
		case "attack_key":
			if global.key_active[key_id.m_up]    {
				state = "right_key"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "mouse_r";
			}
			if global.key_active[key_id.m_right] {
				state = "enter_key";
			}
			break;
		
		case "mouse_r":
			if global.key_active[key_id.m_up]    {
				state = "attack_key"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "dash_key";
			}
			if global.key_active[key_id.m_right] {
				state = "menu_key";
			}
			break;
		
		case "dash_key":
			if global.key_active[key_id.m_up]    {
				state = "mouse_r"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "up_key";
			}
			if global.key_active[key_id.m_right] {
				state = "menu_key";
			}
			break;
	
		//--------------------------//RIGHT//--------------------------//
	
		case "interact_key":
			if global.key_active[key_id.m_up]    {
				state = "menu_key"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "consumable_key";
			}
			if global.key_active[key_id.m_left]  {
				state = "up_key";
			}
			break;
		
		case "consumable_key":
			if global.key_active[key_id.m_up]    {
				state = "interact_key"; 
			}
			if global.key_active[key_id.m_down]  { 
				state = "mmap_key";
			}
			if global.key_active[key_id.m_left]  {
				state = "left_key";
			}
			break;
		
		case "mmap_key":
			if global.key_active[key_id.m_up]    {
				state = "consumable_key"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "os_mmap_key";
			}
			if global.key_active[key_id.m_left]  {
				state = "down_key";
			}
			break;
		
		case "os_mmap_key":
			if global.key_active[key_id.m_up]    {
				state = "mmap_key"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "enter_key";
			}
			if global.key_active[key_id.m_left]  {
				state = "right_key";
			}
			break;
		
		case "enter_key":
			if global.key_active[key_id.m_up]    {
				state = "os_mmap_key"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "menu_key";
			}
			if global.key_active[key_id.m_left]  {
				state = "attack_key";
			}
			break;
		
		case "menu_key":
			if global.key_active[key_id.m_up]    {
				state = "enter_key"; 
			}
			if global.key_active[key_id.m_down]  {
				state = "reset";
			}
			if global.key_active[key_id.m_left]  {
				state = "mouse_r";
			}
			break;
			
		case "reset":
			if global.key_active[key_id.m_up]      {
				state = "menu_key"; 
			}
			
			if global.key_active[key_id.m_down]    {
				state = "interact_key";
			}
			
			if global.key_active[key_id.m_left]    {
				state = "dash_key";
			}
			
			if global.key_active[key_id.m_confirm] {
				ini_open("saveoptions.ini");
				
				global.key_binds[key_id.right]     = ord("R");
				global.key_binds[key_id.left]      = ord("L");
				global.key_binds[key_id.down]      = ord("D");
				global.key_binds[key_id.up]        = ord("U");
				global.key_binds[key_id.dash]      = vk_shift;
				global.key_binds[key_id.skill_1]   = mb_left;
				global.key_binds[key_id.skill_2]   = mb_right;
				global.key_binds[key_id.interact]  = ord("F");
				global.key_binds[key_id.consume]   = ord("E");
				global.key_binds[key_id.utilize]   = vk_space;
				global.key_binds[key_id.menu]      = vk_escape;
				global.key_binds[key_id.map]       = ord("M");
				global.key_binds[key_id.inv]       = ord("I");
				global.key_binds[key_id.mmap]      = vk_tab;
				global.key_binds[key_id.m_confirm] = vk_enter;
				
				ini_write_real("controls",      "right_key", global.key_binds[key_id.right]);
				ini_write_real("controls",       "left_key", global.key_binds[key_id.left]);
				ini_write_real("controls",       "down_key", global.key_binds[key_id.down]);
				ini_write_real("controls",         "up_key", global.key_binds[key_id.up]);
				ini_write_real("controls",       "dash_key", global.key_binds[key_id.dash]);
				ini_write_real("controls",     "attack_key", global.key_binds[key_id.skill_1]);
				ini_write_real("controls",    "mouse_r_key", global.key_binds[key_id.skill_2]);
				ini_write_real("controls",   "interact_key", global.key_binds[key_id.interact]);
				ini_write_real("controls", "consumable_key", global.key_binds[key_id.consume]);
				ini_write_real("controls",    "utilize_key", global.key_binds[key_id.utilize]);
				ini_write_real("controls",       "menu_key", global.key_binds[key_id.menu]);
				ini_write_real("controls",        "map_key", global.key_binds[key_id.map]);
				ini_write_real("controls",        "inv_key", global.key_binds[key_id.inv]);
				ini_write_real("controls",       "mmap_key", global.key_binds[key_id.mmap]);
				ini_write_real("controls",      "enter_key", global.key_binds[key_id.m_confirm]);
				ini_close();
				state = "reset";
			}
			break;
	}


	if point_in_rectangle(mousex,mousey,up_key_x1,up_key_y1,up_key_width,up_key_height+12*m){
		state="up_key";
		if scr_GUI_button(up_key_x1,up_key_y1,up_key_width,up_key_height+12*m) {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,left_key_x1,left_key_y1,left_key_x2,left_key_y2+12*m){
		state="left_key";
		if scr_GUI_button(left_key_x1,left_key_y1,left_key_width,left_key_height+12*m) {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,down_key_x1,down_key_y1,down_key_x2,down_key_y2+12*m){
		state="down_key";
		if scr_GUI_button(down_key_x1,down_key_y1,down_key_width,down_key_height+12*m) {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,right_key_x1,right_key_y1,right_key_x2,right_key_y2+12*m){
		state = "right_key";
		if scr_GUI_button(right_key_x1,right_key_y1,right_key_width,right_key_height+12*m) {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,attack_key_x1,attack_key_y1,attack_key_x2,attack_key_y2+12*m){
		state = "attack_key";
		if scr_GUI_button(attack_key_x1,attack_key_y1,attack_key_width,attack_key_height+12*m) {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,mouse_r_x1,mouse_r_y1,mouse_r_x2,mouse_r_y2+12*m){
		state = "mouse_r";
		if scr_GUI_button(mouse_r_x1,mouse_r_y1,mouse_r_width,mouse_r_height+12*m) {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,dash_key_x1,dash_key_y1,dash_key_x2,dash_key_y2+12*m){
		state = "dash_key";
		if scr_GUI_button(dash_key_x1,dash_key_y1,dash_key_width,dash_key_height+12*m) {
			listen_for_key = true;
		}
	}

	//--------------------------//RIGHT//--------------------------//

	if point_in_rectangle(mousex,mousey,interact_key_x1,interact_key_y1,interact_key_x2,interact_key_y2+12*m){
		state="interact_key";
		if scr_GUI_button(interact_key_x1,interact_key_y1,interact_key_width,interact_key_height+12*m) {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,consumable_key_x1,consumable_key_y1,consumable_key_x2,consumable_key_y2+12*m){
		state = "consumable_key";
		if scr_GUI_button(consumable_key_x1,consumable_key_y1,consumable_key_width,consumable_key_height+12*m) {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,mmap_key_x1,mmap_key_y1,mmap_key_x2,mmap_key_y2+12*m){
		state = "mmap_key";
		if scr_GUI_button(left_key_x1,left_key_y1,left_key_width,left_key_height+12*m){
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,os_mmap_key_x1,os_mmap_key_y1,os_mmap_key_x2,os_mmap_key_y2+12*m){
		state = "os_mmap_key";
		if scr_GUI_button(os_mmap_key_x1,os_mmap_key_y1,os_mmap_key_width,os_mmap_key_height+12*m) {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,enter_key_x1,enter_key_y1,enter_key_x2,enter_key_y2+12*m){
		state = "enter_key";
		if scr_GUI_button(enter_key_x1,enter_key_y1,enter_key_width,enter_key_height+12*m){
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,menu_key_x1,menu_key_y1,menu_key_x2,menu_key_y2+12*m){
		state = "menu_key";
		if scr_GUI_button(menu_key_x1,menu_key_y1,menu_key_width,menu_key_height+12*m) {
			listen_for_key = true;
		}
	}
	if point_in_rectangle(mousex,mousey,reset_x1,reset_y1,reset_x2,reset_y2+12*m){
		state = "reset";
		if scr_GUI_button(reset_x1,reset_y1,reset_width,reset_height+12*m) {
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
			
			ini_write_real("controls",      "right_key", global.key_binds[key_id.right]);
			ini_write_real("controls",       "left_key", global.key_binds[key_id.left]);
			ini_write_real("controls",       "down_key", global.key_binds[key_id.down]);
			ini_write_real("controls",         "up_key", global.key_binds[key_id.up]);
			ini_write_real("controls",       "dash_key", global.key_binds[key_id.dash]);
			ini_write_real("controls",     "attack_key", global.key_binds[key_id.skill_1]);
			ini_write_real("controls",    "mouse_r_key", global.key_binds[key_id.skill_2]);
			ini_write_real("controls",   "interact_key", global.key_binds[key_id.interact]);
			ini_write_real("controls", "consumable_key", global.key_binds[key_id.consume]);
			ini_write_real("controls",    "utilize_key", global.key_binds[key_id.utilize]);
			ini_write_real("controls",       "menu_key", global.key_binds[key_id.menu]);
			ini_write_real("controls",        "map_key", global.key_binds[key_id.map]);
			ini_write_real("controls",        "inv_key", global.key_binds[key_id.inv]);
			ini_write_real("controls",       "mmap_key", global.key_binds[key_id.mmap]);
			ini_write_real("controls",      "enter_key", global.key_binds[key_id.m_confirm]);
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