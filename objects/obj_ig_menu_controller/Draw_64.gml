/// @description Insert description here
// You can write your code in this editor
var off = 96;
var c  = display_get_gui_width()  / 2;
var c_ = display_get_gui_height() / 2;
draw_set_font(font_ig_menu);

switch state{
	case "menu":
		draw_set_color(c_black);
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		
		if(box_wd < 68){
			box_wd += 4;
			alpha   = 0;
		}
		
		scr_9SB(spr_9S_frame, c - box_wd * m, (off + 44) * m, c + box_wd * m, (off + 208) * m);
		
		draw_set_color(c_white);
		draw_set_alpha(alpha);
		
		//Write the options
		wd = string_width_ext("Continue",2,12) / 2 * m;
		//draw_rectangle(c-wd,(64 + off) * m,c+wd,(64 + off + 15) * m,true);
		
		if(box_wd >= 64){
			if(alpha < 1){
				alpha += 0.2;
			}
			
			draw_sprite_ext(spr_small_rect,0,c, (off + 44) * m, m, m, 0,c_white,alpha);
			
			if point_in_rectangle(mousex,mousey,c-wd,(56 + off) * m,c+wd,(64 + off + 15) * m){ 
				if mouse_check_button_released(mb_left) {
					box_wd   = 0;
					state    = "closed";
					check    = false;
					alarm[0] = 0.5 * room_speed;
				}
				draw_set_alpha(0.6);
			}
		
			draw_text_ext_transformed(c, (56 + off) * m,"Continue",2,12,m,m,0);
			draw_set_alpha(alpha);
		

			wd = string_width_ext("Status",2,12) / 2 * m;
			//draw_rectangle(c-wd,(96 + off) * m,c+wd,(96 + off + 15) * m,true);
			if point_in_rectangle(mousex,mousey,c-wd,(86 + off) * m,c+wd,(96 + off + 15) * m){
				if mouse_check_button_pressed(mb_left) {
					box_wd   = 0;
					state    = "status";
					check    = false;
					alarm[0] = 0.5 * room_speed;
				}
				draw_set_alpha(0.6);
			}
		
			draw_text_ext_transformed(c, (86 + off) * m,"Status",2,12,m,m,0);
			draw_set_alpha(alpha);
		
		
			wd = string_width_ext("Map",2,90) / 2 * m;
			//draw_rectangle(c-wd,(128 + off) * m,c+wd,(128 + off + 15) * m,true);
			if point_in_rectangle(mousex,mousey,c-wd,(118 + off) * m,c+wd,(128 + off + 15) * m){
				if mouse_check_button_released(mb_left) {
					box_wd   = 0;
					state    = "mmap";
					check    = false;
					alarm[0] = 0.5 * room_speed;
				}
				draw_set_alpha(0.6);
			}
		
			draw_text_ext_transformed(c, (118 + off) * m,"Map",2,90,m,m,0);
			draw_set_alpha(alpha);
		
		
			wd = string_width_ext("Options",2,12) / 2 * m;
			//draw_rectangle(c-wd,(160 + off) * m,c+wd,(160 + off + 15) * m,true);
			if point_in_rectangle(mousex,mousey,c-wd,(150 + off) * m,c+wd,(160 + off + 15) * m){
				if mouse_check_button_pressed(mb_left) {
					instance_create_layer(x,y,layer,obj_options_controller);
					box_wd   = 0;
					state    = "options";
					check    = false;
					alarm[0] = 0.5 * room_speed;
				}
				draw_set_alpha(0.6);
			}
		
			draw_text_ext_transformed(c, (150 + off) * m,"Options",2,12,m,m,0);
			draw_set_alpha(alpha);
		
		
			wd = string_width_ext("Exit",2,12) / 2 * m;
			//draw_rectangle(c-wd,(192 + off) * m,c+wd,(192 + off + 15) * m,true);
			if point_in_rectangle(mousex,mousey,c-wd,(182 + off) * m,c+wd,(192 + off + 15) * m) {
				if mouse_check_button_released(mb_left) {
					game_restart();
				}
				draw_set_alpha(0.6);
			}
		
			draw_text_ext_transformed(c, (182 + off) * m,"Exit",2,12,m,m,0);
			draw_set_alpha(alpha);
		}
		
		draw_set_alpha(1);
	break;
	case "status":
		wd = string_width_ext("Back",2,12) / 2 * m;
		//draw_rectangle(c-wd,(192 + off) * m,c+wd,(192 + off + 15) * m,true);
		if point_in_rectangle(mousex,mousey,c-wd,(256 + 96) * m,c+wd,(256 + 96 + 15) * m){
			if mouse_check_button_released(mb_left) {
				box_wd   = 0;
				state    = "menu";
				check    = false;
				alarm[0] = 0.5 * room_speed;
			}
			draw_set_alpha(0.6);
		}
		
		draw_text_ext_transformed(c, (256 + 96) * m,"Back",2,12,m,m,0);
		
		draw_set_alpha(1);
	break;
	case "mmap":
		wd = string_width_ext("Back",2,12) / 2 * m;
		//draw_rectangle(c-wd,(192 + off) * m,c+wd,(192 + off + 15) * m,true);
		if point_in_rectangle(mousex,mousey,c-wd,(256 + 96) * m,c+wd,(256 + 96 + 15) * m){
			if mouse_check_button_released(mb_left) {
				state    = "menu";
				box_wd   = 0;
				check    = false;
				alarm[0] = 0.5 * room_speed;
			}
			draw_set_alpha(0.6);
		}
		
		draw_text_ext_transformed(c, (256 + 96) * m,"Back",2,12,m,m,0);
		
		draw_set_alpha(1);
	break;
	default:
	
	break;
}
