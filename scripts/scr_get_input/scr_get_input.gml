/// @description scr_get_input
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));
up_key = keyboard_check(ord("W"));
dash_key = keyboard_check(vk_shift);    
attack_key = mouse_check_button(mb_left);    
mouse_r_key = mouse_check_button(mb_right);  
interact_key = keyboard_check(ord("F"));
potion_key = keyboard_check(ord("R"));
debug_key = keyboard_check(ord("Ç"));
menu_key = keyboard_check_released(vk_escape);
mmap_key = keyboard_check(ord("M"));
os_mmap_key = keyboard_check(vk_tab);
enter_key = keyboard_check(vk_enter);
a_up = keyboard_check_pressed(vk_up);
a_down = keyboard_check_pressed(vk_down);
a_left = keyboard_check_pressed(vk_left);
a_right = keyboard_check_pressed(vk_right);