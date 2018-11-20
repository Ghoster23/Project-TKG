/// @description Insert description here
// You can write your code in this editor
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

//reset tab mode for auto sugestions
if(keyboard_check(vk_anykey) and !keyboard_check(vk_tab) and !keyboard_check(vk_enter)){
	if(auto_commands != -1){
		auto_commands = -1;
	}
}

//constantly calculating the max scroll offset
scroll_max_offset = string_height_ext(console_text,text_padding,console_w - text_padding) + text_padding - console_max_h;
if(scroll_max_offset <= 0){
	scroll_max_offset = 0;
} 

//if open commandline
if(keyboard_check_pressed(vk_home)){
	if(selected == false){
		selected        = true;
		keyboard_string = "";
		show_log = true;
		exit;
	}
}

//if click on logbutton
if(point_in_rectangle(mousex, mousey, logbtn_left, logbtn_top, logbtn_right, logbtn_bottom)){
	if(mouse_check_button_pressed(mb_left)){
		
		if(show_log == false){
			show_log = true;
		}
		else{
			show_log = false;
		}
		
		if(selected == false){
			selected        = true;
			keyboard_string = "";
		}
	}
}


//If exit terminal
if(keyboard_check_pressed(vk_end)){
	selected     = false;
	cmdline_text = "";
	show_log     = false;
}

if(selected){
	
	cmdline_text = keyboard_string;
	
	//check for macros
	if(keyboard_check_direct(vk_lcontrol)){
		scr_console_macros();
		exit;
	}
	
	#region input commands
	//If pressed enter
	if(keyboard_check_pressed(vk_enter) and auto_commands==-1){
		
		scr_console_execute_command(cmdline_text);
		
		//save command
		mem_commands[mem_commands_n] = cmdline_text;
		mem_commands_n               += 1;
		mem_i                       = mem_commands_n+1;
		
		keyboard_string = "";
	}
	else if(keyboard_check_pressed(vk_enter) and auto_commands!=-1){
		auto_commands = -1;
	}
	#endregion
	
	#region memory commands
	if(keyboard_check_pressed(vk_up) and mem_commands!=-1){
		mem_i           = clamp(mem_i - 1, 0, mem_commands_n-1);
		keyboard_string = mem_commands[mem_i];
	}
	if(keyboard_check_pressed(vk_down) and mem_commands!=-1){
		mem_i           = clamp(mem_i + 1, 0, mem_commands_n-1);
		keyboard_string = mem_commands[mem_i];
	}
	#endregion
	
	#region Auto-sugestion commands
	if(keyboard_check_pressed(vk_tab) and auto_commands == -1){
		//run script to determine possible commands with that text included
		scr_console_auto_commands(cmdline_text);
		if(auto_commands != -1){
			keyboard_string = auto_commands[auto_i];
		}
	}
	else if(keyboard_check_pressed(vk_tab)){
		auto_i           = scr_wrap(auto_i + 1, 0, auto_commands_n - 1)
		keyboard_string = auto_commands[auto_i];
	}
	
	if(show_log == true){
		log_h = string_height_ext(console_text,text_padding,console_w - text_padding) + text_padding;
		log_h = clamp(log_h,0,console_max_h);
		
		
		#region scrolling controll
		if(scroll_selected == true){
			mid_pointy     = mousey;
			mid_pointy     = clamp(mid_pointy, scrollbar_top, scrollbar_bottom); 
			scroll_offset  = ((mid_pointy - scrollbar_top)* scroll_max_offset)/scrollbar_len;
		
		}
		else{
			scrollbar_offset = (scrollbar_len * scroll_offset)/scroll_max_offset;
			mid_pointy       = scrollbar_top + scrollbar_offset; 
		}
		
		if(point_in_rectangle(mousex, mousey, mid_pointx - scrollbar_w/2, mid_pointy - scrollbar_h/2, mid_pointx + scrollbar_w/2, mid_pointy + scrollbar_h/2,)){
			if(mouse_check_button_pressed(mb_left)){
				if(scroll_selected == false){
					scroll_selected = true;
				}
			}
		}
		if(mouse_check_button_released(mb_left)){
			if(scroll_selected == true){
				scroll_selected = false;
			}
		}
		#endregion
		
	}
	#endregion
}


