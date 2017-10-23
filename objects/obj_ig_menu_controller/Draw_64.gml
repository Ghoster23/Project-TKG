/// @description Insert description here
// You can write your code in this editor
var off = 96;
var c = surface_get_width(application_surface)/2;
draw_set_font(font_ig_menu);

switch state{
	case "menu":
		draw_set_color(c_black);
		draw_set_alpha(1);
		draw_sprite_ext(spr_small_rect,0,c - (sprite_get_width(spr_small_rect) / 2) * m, (off + 44) * m, m, m, 0,c_white,1);
		
		draw_set_color(c_white);
		draw_set_alpha(1);
		
		//Write the options
		wd = string_width_ext("Continue",2,12) / 2 * m;
		//draw_rectangle(c-wd,(64 + off) * m,c+wd,(64 + off + 15) * m,true);
		
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(56 + off) * m,c+wd,(64 + off + 15) * m){ 
			if mouse_check_button_released(mb_left) {
				state = "closed";
				check = false;
				alarm[0] = 0.5 * room_speed;
			}
			draw_set_alpha(0.6);
		}
		
		draw_text_ext_transformed(c, (56 + off) * m,"Continue",2,12,m,m,0);
		draw_set_alpha(1);
		

		wd = string_width_ext("Stats",2,12) / 2 * m;
		//draw_rectangle(c-wd,(96 + off) * m,c+wd,(96 + off + 15) * m,true);
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(86 + off) * m,c+wd,(96 + off + 15) * m){
			if mouse_check_button_pressed(mb_left) {
				state = "stats";
				check = false;
				alarm[0] = 0.5 * room_speed;
			}
			draw_set_alpha(0.6);
		}
		
		draw_text_ext_transformed(c, (86 + off) * m,"Stats",2,12,m,m,0);
		draw_set_alpha(1);
		
		
		wd = string_width_ext("Map",2,90) / 2 * m;
		//draw_rectangle(c-wd,(128 + off) * m,c+wd,(128 + off + 15) * m,true);
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(118 + off) * m,c+wd,(128 + off + 15) * m){
			if mouse_check_button_released(mb_left) {
				state = "mmap";
				check = false;
				alarm[0] = 0.5 * room_speed;
			}
			draw_set_alpha(0.6);
		}
		
		draw_text_ext_transformed(c, (118 + off) * m,"Map",2,90,m,m,0);
		draw_set_alpha(1);
		
		
		wd = string_width_ext("Options",2,12) / 2 * m;
		//draw_rectangle(c-wd,(160 + off) * m,c+wd,(160 + off + 15) * m,true);
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(150 + off) * m,c+wd,(160 + off + 15) * m){
			if mouse_check_button_pressed(mb_left) {
				instance_create_layer(x,y,layer,obj_options_controller);
				state = "options";
				check = false;
				alarm[0] = 0.5 * room_speed;
			}
			draw_set_alpha(0.6);
		}
		
		draw_text_ext_transformed(c, (150 + off) * m,"Options",2,12,m,m,0);
		draw_set_alpha(1);
		
		
		wd = string_width_ext("Exit",2,12) / 2 * m;
		//draw_rectangle(c-wd,(192 + off) * m,c+wd,(192 + off + 15) * m,true);
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(182 + off) * m,c+wd,(192 + off + 15) * m) {
			if mouse_check_button_released(mb_left) {
				game_restart();
			}
			draw_set_alpha(0.6);
		}
		
		draw_text_ext_transformed(c, (182 + off) * m,"Exit",2,12,m,m,0);
		draw_set_alpha(1);
			
	break;
	case "stats":
		stats[0] = global.p_maxhp;
		stats[1] = global.p_atk;
		stats[2] = global.p_def;
		stats[3] = global.p_satk;
		stats[4] = global.p_sdef;
		stats[5] = global.p_spd;
		
		var s = 1;
		
		draw_sprite_ext(spr_mid_rect,0,c - (sprite_get_width(spr_mid_rect) / 2) * m, (off + 44) * m, m, m, 0,c_white,1);
		
		draw_sprite_ext( spr_ig_stats, 0, c, 256 * m, m * s, m * s, 0, c_white, 1);
		
		if global.char == 0 {
			var col = c_white;
		}else {
			var col = scr_char_color();
		}
		
		//HP
		var pip = stats[0] div 4;
		
		for(var i = 0; i < pip; i++){
			draw_sprite_ext(spr_pip,0,display_get_gui_width() / 2 - 83 * m * s, (295 - 7 * i * s) * m,m*s,m*s,0,col,1);
			
		}
		
		//ATK
		var pip = stats[1] div 2;
		
		for(var i = 0; i < pip; i++){
			draw_sprite_ext(spr_pip,0,display_get_gui_width() / 2 - 51 * m * s, (295 - 7 * i * s) * m,m*s,m*s,0,col,1);
			
		}
		
		//DEF
		var pip = stats[2] div 2;
		
		for(var i = 0; i < pip; i++){
			draw_sprite_ext(spr_pip,0,display_get_gui_width() / 2 - 19 * m * s, (295 - 7 * i *s) * m,m*s,m*s,0,col,1);
			
		}
		
		//SATK
		var pip = stats[3] div 2;
		
		for(var i = 0; i < pip; i++){
			draw_sprite_ext(spr_pip,0,display_get_gui_width() / 2 + 13 * m * s, (295 - 7 * i * s) * m,m*s,m*s,0,col,1);
			
		}
		
		//SDEF
		var pip = stats[4] div 2;
		
		for(var i = 0; i < pip; i++){
			draw_sprite_ext(spr_pip,0,display_get_gui_width() / 2 + 45 * m * s, (295 - 7 * i * s) * m,m*s,m*s,0,col,1);
			
		}
		
		//SPD
		var pip = stats[5] - 2;
		
		for(var i = 0; i < pip; i++){
			draw_sprite_ext(spr_pip,0,display_get_gui_width() / 2 + 77 * m * s, (295 - 7 * i * s) * m,m*s,m*s,0,col,1);
			
		}
		
		wd = string_width_ext("Back",2,12) / 2 * m;
		//draw_rectangle(c-wd,(192 + off) * m,c+wd,(192 + off + 15) * m,true);
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(256 + 96) * m,c+wd,(256 + 96 + 15) * m){
			if mouse_check_button_released(mb_left) {
				state = "menu";
				check = false;
				alarm[0] = 0.5 * room_speed;
			}
			draw_set_alpha(0.6);
		}
		
		draw_text_ext_transformed(c, (256 + 96) * m,"Back",2,12,m,m,0);
		
	break;
	case "mmap":
		
		wd = string_width_ext("Back",2,12) / 2 * m;
		//draw_rectangle(c-wd,(192 + off) * m,c+wd,(192 + off + 15) * m,true);
		if point_in_rectangle(display_mouse_get_x(),display_mouse_get_y(),c-wd,(256 + 96) * m,c+wd,(256 + 96 + 15) * m){
			if mouse_check_button_released(mb_left) {
				state = "menu";
				check = false;
				alarm[0] = 0.5 * room_speed;
			}
			draw_set_alpha(0.6);
		}
		
		draw_text_ext_transformed(c, (256 + 96) * m,"Back",2,12,m,m,0);
		
		draw_set_alpha(1);
	break;
}
