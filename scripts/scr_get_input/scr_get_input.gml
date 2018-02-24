/// @description scr_get_input

if global.right_key_bind==mb_left or global.right_key_bind==mb_right or global.right_key_bind==mb_middle{right_key=mouse_check_button(global.right_key_bind);}
else{right_key=keyboard_check(global.right_key_bind); }

if global.left_key_bind==mb_left or global.left_key_bind==mb_right or global.left_key_bind==mb_middle{left_key=mouse_check_button(global.left_key_bind);}
else{left_key=keyboard_check(global.left_key_bind); }

if global.down_key_bind==mb_left or global.down_key_bind==mb_right or global.down_key_bind==mb_middle{down_key=mouse_check_button(global.down_key_bind);}
else{down_key=keyboard_check(global.down_key_bind); }

if global.up_key_bind==mb_left or global.up_key_bind==mb_right or global.up_key_bind==mb_middle{up_key=mouse_check_button(global.up_key_bind);}
else{up_key=keyboard_check(global.up_key_bind); }

if global.dash_key_bind==mb_left or global.dash_key_bind==mb_right or global.dash_key_bind==mb_middle{dash_key=mouse_check_button(global.dash_key_bind);}
else{dash_key=keyboard_check(global.dash_key_bind); }

if global.attack_key_bind==mb_left or global.attack_key_bind==mb_right or global.attack_key_bind==mb_middle{attack_key=mouse_check_button(global.attack_key_bind);}
else{attack_key=keyboard_check(global.attack_key_bind); }

if global.mouse_r_key_bind==mb_left or global.mouse_r_key_bind==mb_right or global.mouse_r_key_bind==mb_middle{mouse_r_key=mouse_check_button(global.mouse_r_key_bind);}
else{mouse_r_key=keyboard_check(global.mouse_r_key_bind); }

if global.interact_key_bind==mb_left or global.interact_key_bind==mb_right or global.interact_key_bind==mb_middle{interact_key=mouse_check_button(global.interact_key_bind);}
else{interact_key=keyboard_check_pressed(global.interact_key_bind); }

if global.consumable_key_bind==mb_left or global.consumable_key_bind==mb_right or global.consumable_key_bind==mb_middle{consumable_key=mouse_check_button(global.consumable_key_bind);}
else{consumable_key=keyboard_check_pressed(global.consumable_key_bind); }

if global.menu_key_bind==mb_left or global.menu_key_bind==mb_right or global.menu_key_bind==mb_middle{menu_key=mouse_check_button(global.menu_key_bind);}
else{menu_key=keyboard_check_pressed(global.menu_key_bind); }

if global.mmap_key_bind==mb_left or global.mmap_key_bind==mb_right or global.mmap_key_bind==mb_middle{mmap_key=mouse_check_button(global.mmap_key_bind);}
else{mmap_key=keyboard_check(global.mmap_key_bind); }

if global.os_mmap_key_bind==mb_left or global.os_mmap_key_bind==mb_right or global.os_mmap_key_bind==mb_middle{os_mmap_key=mouse_check_button(global.os_mmap_key_bind);}
else{os_mmap_key=keyboard_check(global.os_mmap_key_bind); }

if global.enter_key_bind==mb_left or global.enter_key_bind==mb_right or global.enter_key_bind==mb_middle{enter_key=mouse_check_button(global.enter_key_bind);}
else{enter_key=keyboard_check_pressed(global.enter_key_bind); }


//these are for menus, we dont mess with them 
mouse_click = mouse_check_button_released(mb_left);  
a_up        = keyboard_check_pressed(vk_up);
a_down      = keyboard_check_pressed(vk_down);
a_left      = keyboard_check_pressed(vk_left);
a_right     = keyboard_check_pressed(vk_right);
escape      = keyboard_check_pressed(vk_escape); 

if(room == rm_level || room == rm_CH_boss){
	mousex = display_mouse_get_x();
	mousey = display_mouse_get_y();
}else {
	mousex = mouse_x * (display_get_gui_width() / room_width);
	mousey = mouse_y * (display_get_gui_height() / room_height);
}