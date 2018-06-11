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

			wd = string_width_ext("Continue",2,90) / 2 * m;
			if(scr_GUI_h_button(c-wd,(56 + off) * m, 
								c+wd, (64 + off + 15) * m,
								-1,false,"Continue",1,0.6) == 1){
				box_wd   = 0;
				state    = "closed";
				check    = false;
				alarm[0] = 0.5 * room_speed;
			}
			
			wd = string_width_ext("Inventory",2,90) / 2 * m;
			if(scr_GUI_h_button(c-wd, (86 + off) * m, 
								c+wd, (96 + off + 15) * m,
								-1,false,"Inventory",1,0.6) == 1){
				box_wd   = 0;
				state    = "inv";
				check    = false;
				alarm[0] = 0.5 * room_speed;
					
				obj_view.target = global.body;
				obj_view.t_zoom = 2;
			}
			
			wd = string_width_ext("Map",2,90) / 2 * m;
			if(scr_GUI_h_button(c-wd, (118 + off) * m, 
								c+wd, (128 + off + 15) * m,
								-1,false,"Map",1,0.6) == 1){
				box_wd   = 0;
				state    = "mmap";
				check    = false;
				alarm[0] = 0.5 * room_speed;
			}	
		
			wd = string_width_ext("Options",2,12) / 2 * m;
			if(scr_GUI_h_button(c-wd, (150 + off) * m, 
								c+wd, (160 + off + 15) * m,
								-1,false,"Options",1,0.6) == 1){
				box_wd   = 0;
				state    = "options";
				check    = false;
				alarm[0] = 0.5 * room_speed;
			}		
		
			wd = string_width_ext("Exit",2,12) / 2 * m;
			if(scr_GUI_h_button(c-wd, (182 + off) * m, 
								c+wd, (192 + off + 15) * m,
								-1,false,"Exit",1,0.6) == 1){
				game_restart();
			}
		}
		
		draw_set_alpha(1);
	break;
	case "inv":
		wd = string_width_ext("Back",2,12) / 2 * m;
		if(scr_GUI_h_button(c-wd, (256 + 96) * m, 
							c+wd, (256 + 96 + 15) * m,
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
		if(scr_GUI_h_button(c-wd, (256 + 96) * m, 
							c+wd, (256 + 96 + 15) * m,
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
