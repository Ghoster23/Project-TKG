/*
___________________________| ADD A NEW COMMAND! |__________________________________________

  -> edit scr_console_commands() and add new command to both arrays	           
  -> edit scr_console_execute_command()'s switch statement to add the new comands behaviour
  
  -> edit scr_console_macros() to add or remove a macro!
___________________________________________________________________________________________
*/

image_xscale = 1/2.5;
image_yscale = 1/2.5;

display_set_gui_size(1920,1080);

display_w = display_get_gui_width();
display_h = display_get_gui_height();

//================ console =================
text_padding = 30;

console_w     = 700;
console_h     = 40;
console_text  = "=================| SomethingFell Console V 0.5 |=================\n"
console_text += " (Esc -> exit console ) (Tab -> autocomplete) (Enter -> Execute)\n";
console_text += " (LCtrl + Key -> macro): type 'list_macros()' for help          \n";
console_max_h = 800;

show_log          = false;
log_h             = string_height_ext(console_text,0,console_w - text_padding);
scroll_offset     = 0;
scroll_max_offset = 0;

//================ //\\//\\|| !! SCRIPTS !! ||//\\//\\ =================

scr_console_commands();

db_overlay = false;
																	
//================ commandline bar =====================================
cmdline_left   = display_w - console_w;
cmdline_top    = display_h - console_h;
cmdline_right  = display_w;
cmdline_bottom = display_h;

cmdline_text = "";

selected = false;

tp_visible = true;
alarm_set(0,room_speed*0.5);

//================ log button =================
logbtn_w      = 50; 
logbtn_right  = cmdline_left;
logbtn_bottom = cmdline_bottom;
logbtn_left   = logbtn_right - logbtn_w;
logbtn_top    = cmdline_top;

tri_padding = 15;
tri1x = logbtn_left + tri_padding;
tri1y = logbtn_bottom - tri_padding;
tri2x = logbtn_right - tri_padding;
tri2y = logbtn_bottom - tri_padding;
tri3x = logbtn_left + logbtn_w/2;
tri3y = logbtn_top + tri_padding;

//================ scroll bar =================
scrollbar_offset = 0;
scrollbar_w      = 15;
scrollbar_h      = 30;

scroll_selected = false;

scrollbar_bottom = logbtn_top - 20;
scrollbar_top    = cmdline_top - log_h + 20;
scrollbar_len    =  scrollbar_bottom - scrollbar_top;

scrollbar_offset = (scrollbar_len * scroll_offset)/scroll_max_offset;
	
mid_pointx       = logbtn_left + logbtn_w/2;
mid_pointy       = scrollbar_bottom - scrollbar_offset; 


//================ memory array =================
mem_commands = -1;
mem_commands_n = 0;
mem_i = mem_commands_n+1;

//================ sugestions array =================
auto_commands   = -1;
auto_commands_n =  0;
auto_i = -1;

auto_popup_height = 0;
auto_popup_width  = 0