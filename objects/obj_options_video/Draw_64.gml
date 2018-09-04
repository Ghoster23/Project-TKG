//draw_black rectangle

draw_set_font(font_ig_menu);

scr_9SB_ext(spr_menu_frame_9s, hc - 96 * m, vc - 128 * m, hc + 96 * m, vc + 160 * m, m, m);

draw_set_alpha(1);

//draw the text

draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext_transformed(hc, video_y1,"Video Options",2,200,m,m,0);
draw_line_width(video_x1,video_y2,video_x2,video_y2,2*m);
//draw_rectangle(video_x1,video_y1,video_x2,video_y2,true);

draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext_transformed(hc, fullscreen_y1,"Fullscreen",2,200,m,m,0);

draw_set_font(font_chsl_tags);
draw_set_alpha(0.6);
draw_text_ext_transformed(hc, fullscreen_y2 + 5, global.fullscreen, 2,200,m,m,0);
draw_set_font(font_ig_menu);
draw_set_alpha(1);
//draw_rectangle(fullscreen_x1,fullscreen_y1,fullscreen_x2,fullscreen_y2,true);

draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext_transformed(hc, screenshake_y1,"Screen Shake",2,200,m,m,0);

draw_set_font(font_chsl_tags);
draw_set_alpha(0.6);
draw_text_ext_transformed(hc, screenshake_y2 + 5, global.screenshake, 2,200,m,m,0);
draw_set_font(font_ig_menu);
draw_set_alpha(1);
//draw_rectangle(screenshake_x1,screenshake_y1,screenshake_x2,screenshake_y2,true);

draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext_transformed(hc, textscroll_y1,"Text Scroll",2,200,m,m,0);
//draw_rectangle(textscroll_x1,textscroll_y1,textscroll_x2,textscroll_y2,true);

draw_set_font(font_chsl_tags);
draw_set_alpha(0.6);
draw_text_ext_transformed(hc, textscroll_y2 + 5, global.textscroll, 2,200,m,m,0);
draw_set_font(font_ig_menu);
draw_set_alpha(1);

draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext_transformed(hc, particles_y1,"Particles",2,200,m,m,0);
//draw_rectangle(particles_x1,particles_y1,particles_x2,particles_y2,true);

draw_set_font(font_chsl_tags);
draw_set_alpha(0.6);
draw_text_ext_transformed(hc, particles_y2 + 5, global.particles, 2,200,m,m,0);
draw_set_font(font_ig_menu);
draw_set_alpha(1);



//back
draw_sprite_ext(spr_back,0,hc,particles_y1+particles_height+18*m,m,m,0,c_white,1);


switch state{

	case "fullscreen":
		pointer_x = fullscreen_x1;
		pointer_y = fullscreen_y1+fullscreen_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
	
	case "resolution":
		pointer_x = resolution_x1;
		pointer_y = resolution_y1+resolution_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
	
	case "screenshake":
		pointer_x = screenshake_x1;
		pointer_y = screenshake_y1+screenshake_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "textscroll":
		pointer_x = textscroll_x1;
		pointer_y = textscroll_y1+textscroll_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "particles":
		pointer_x = particles_x1;
		pointer_y = particles_y1+particles_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;

}