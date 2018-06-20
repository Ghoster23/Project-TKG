var c   = display_get_gui_width()  / 2;
var c_  = display_get_gui_height() / 2;
var m   = global.ratio;
var off = (mn_hg / 2) * m;
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
		
		scr_9SB(spr_9S_frame, c - box_wd * m, c_ - off, c + box_wd * m, c_ + off);
		
		draw_set_color(c_white);
		draw_set_alpha(alpha);
		
		//Write the options
		if(box_wd >= 64){
			if(alpha < 1){
				alpha += 0.2;
			}
			
			draw_sprite_ext(spr_small_rect, 0, c, c_ - off, m, m, 0, c_white, alpha);

			wd = string_width_ext("Continue",2,90) / 2 * m;
			if(scr_GUI_h_button( c, c_ - (off * 3 / 4), wd, 16 * m,
								-1,false,"Continue",1,0.6) == 1){
				box_wd   = 0;
				state    = "closed";
				check    = false;
				alarm[0] = 0.5 * room_speed;
			}
			
			wd = string_width_ext("Inventory",2,90) / 2 * m;
			if(scr_GUI_h_button(c, c_ - (off * 1 / 4), wd, 16 * m,
								-1,false,"Inventory",1,0.6) == 1){
				box_wd   = 0;
				state    = "inv";
				check    = false;
				alarm[0] = 0.5 * room_speed;
					
				obj_view.target = global.body;
				obj_view.t_zoom = 2;
			}
			
			wd = string_width_ext("Map",2,90) / 2 * m;
			if(scr_GUI_h_button(c, c_ + (off * 1 / 4), wd, 16 * m,
								-1,false,"Map",1,0.6) == 1){
				box_wd   = 0;
				state    = "mmap";
				check    = false;
				alarm[0] = 0.5 * room_speed;
			}	
		
			wd = string_width_ext("Options",2,12) / 2 * m;
			if(scr_GUI_h_button(c, c_ + (off * 3 / 4), wd, 16 * m,
								-1,false,"Options",1,0.6) == 1){
				box_wd   = 0;
				state    = "options";
				check    = false;
				alarm[0] = 0.5 * room_speed;
			}		
		
			wd = string_width_ext("Exit",2,12) / 2 * m;
			if(scr_GUI_h_button(c, c_ + (off * 3 / 4), wd, 16 * m,
								-1,false,"Exit",1,0.6) == 1){
				game_restart();
			}
		}
		
		draw_set_alpha(1);
	break;
	case "inv":
		wd = string_width_ext("Back",2,12) / 2 * m;
		if(scr_GUI_h_button(c, (256 + 96) * m, 
							wd, (256 + 96 + 15) * m,
							-1,false,"Back",1,0.6) == 1){
			box_wd   = 0;
			state    = "menu";
			check    = false;
			alarm[0] = 0.5 * room_speed;
				
			obj_view.target = noone;
			obj_view.t_zoom = 1;
		}
	break;
	case "mmap":
		wd = string_width_ext("Back",2,12) / 2 * m;
		if(scr_GUI_h_button(c, (256 + 96) * m, 
							wd, (256 + 96 + 15) * m,
							-1,false,"Back",1,0.6) == 1){
			box_wd   = 0;
			state    = "menu";
			check    = false;
			alarm[0] = 0.5 * room_speed;
		}
	break;
	default:
	
	break;
}
