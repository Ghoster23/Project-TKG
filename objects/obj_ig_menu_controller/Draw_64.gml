/// @description Insert description here
// You can write your code in this editor
var off = 96;
var c = surface_get_width(application_surface)/2;
draw_set_font(font_ig_menu);

switch state{
	case "menu":
		//Write the options
		draw_text_ext_transformed(c, (64 + off) * m,"Continue",2,12,m,m,0);
		wd = string_width_ext("Continue",2,12) / 2 * m;
		//draw_rectangle(c-wd,(64 + off) * m,c+wd,(64 + off + 15) * m,true);
		
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(64 + off) * m,c+wd,(64 + off + 15) * m) and mouse_check_button_released(mb_left) {
			state = "closed";
			check = false;
			alarm[0] = 0.5 * room_speed;
		}
		
		draw_text_ext_transformed(c, (96 + off) * m,"Stats",2,12,m,m,0);
		wd = string_width_ext("Stats",2,12) / 2 * m;
		//draw_rectangle(c-wd,(96 + off) * m,c+wd,(96 + off + 15) * m,true);
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(96 + off) * m,c+wd,(96 + off + 15) * m) and mouse_check_button_pressed(mb_left) {
			state = "stats";
			check = false;
			alarm[0] = 0.5 * room_speed;
		}
		
		draw_text_ext_transformed(c, (128 + off) * m,"Map",2,90,m,m,0);
		wd = string_width_ext("Map",2,90) / 2 * m;
		//draw_rectangle(c-wd,(128 + off) * m,c+wd,(128 + off + 15) * m,true);
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(128 + off) * m,c+wd,(128 + off + 15) * m) and mouse_check_button_released(mb_left) {
			state = "mmap";
			check = false;
			alarm[0] = 0.5 * room_speed;
		}
		
		draw_text_ext_transformed(c, (160 + off) * m,"Options",2,12,m,m,0);
		wd = string_width_ext("Options",2,12) / 2 * m;
		//draw_rectangle(c-wd,(160 + off) * m,c+wd,(160 + off + 15) * m,true);
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(160 + off) * m,c+wd,(160 + off + 15) * m) and mouse_check_button_released(mb_left) {
			state = "closed";
			check = false;
			alarm[0] = 0.5 * room_speed;
		}
		
		draw_text_ext_transformed(c, (192 + off) * m,"Exit",2,12,m,m,0);
		wd = string_width_ext("Exit",2,12) / 2 * m;
		//draw_rectangle(c-wd,(192 + off) * m,c+wd,(192 + off + 15) * m,true);
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(192 + off) * m,c+wd,(192 + off + 15) * m) and mouse_check_button_released(mb_left) {
			game_restart();
		}
			
	break;
	case "stats":
		stats[0] = global.p_maxhp;
		stats[1] = global.p_atk;
		stats[2] = global.p_def;
		stats[3] = global.p_satk;
		stats[4] = global.p_sdef;
		stats[5] = global.p_spd;
		
		for(var i = 0; i < 6; i++){
			draw_text_ext_transformed(c,(32 * i + off) * m,stats[i],2,12,m,m,0);
					
		}
	break;
	case "mmap":
		draw_text_ext_transformed(c, (192 + 96) * m,"Back",2,12,m,m,0);
		wd = string_width_ext("Back",2,12) / 2 * m;
		//draw_rectangle(c-wd,(192 + off) * m,c+wd,(192 + off + 15) * m,true);
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(192 + 96) * m,c+wd,(192 + 96 + 15) * m) and mouse_check_button_released(mb_left) {
			game_restart();
		}
	break;
}
