var wc  = global.gui_WD / 2;
var hc  = global.gui_HG / 2;
var m   = global.cam_ratio;
var off = (mn_hg / 2) * m;
draw_set_font(font_ig_menu);

switch state{
	case "menu":
		draw_set_color(c_black);
		draw_set_alpha(1);
		
		if(box_wd < 52){
			box_wd += 4;
			alpha   = 0;
		}
		
		scr_9SB_tiles(spr_menu_frame_9s, wc - box_wd * m, hc - off, wc + box_wd * m, hc + off, m);
		
		draw_set_color(c_white);
		draw_set_alpha(alpha);
		
		//Write the options
		if(box_wd >= 52){
			if(alpha < 1){
				alpha += 0.2;
			}
			
			for(var i = 0; i < 5; i++){
				var wd = string_width(options[i]) * m;
				var hg = string_height(options[i]) * m;
				var j  = -2 + i;
				
				if(scr_GUI_h_button( wc - wd/2, hc + off * j / 3 - hg/2, wd, hg,
									-1,false,options[i],1,0.6) == 1){
					if(i < 4){
						box_wd   = 20;
						state    = n_state[i];
						check    = false;
						alarm[0] = 0.5 * room_speed;
						
						if(i == 1){
							obj_view.target = global.body;
							obj_view.t_zoom = 2;
						}else if(i == 3){
							instance_create_layer(x,y,layer,obj_options_controller);
						}
						
					}else {
						room_goto(0);
					}
				}
			}
		}
		
		draw_set_alpha(1);
	break;
	case "inv":
		var wd = string_width("Back") * m;
		var hg = string_height("Back") * m;
		if(scr_GUI_h_button(wc - wd/2, hc * 2 - 16 * global.cam_ratio, 
							wd, hg,
							-1,false,"Back",1,0.6) == 1){
			box_wd   = 20;
			state    = "menu";
			check    = false;
			alarm[0] = 0.5 * room_speed;
				
			obj_view.target = noone;
			obj_view.t_zoom = 1;
		}
	break;
	case "mmap":
		var wd = string_width("Back") * m;
		var hg = string_height("Back") * m;
		if(scr_GUI_h_button(wc - wd/2, hc * 2 - 16 * global.cam_ratio,
							wd, hg,
							-1,false,"Back",1,0.6) == 1){
			box_wd   = 20;
			state    = "menu";
			check    = false;
			alarm[0] = 0.5 * room_speed;
		}
	break;
	default:
	
	break;
}
