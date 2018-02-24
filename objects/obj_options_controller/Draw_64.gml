//draw_black rectangle

draw_set_font(font_ig_menu);

//draw_set_color(c_black);
//draw_set_alpha(1);
//draw_rectangle(c - 96 * m, (off + 48 -64) * m, c + 96 * m, (off + 160 + 64 ) * m, false);

draw_sprite_ext( spr_minimap, 0, 64 * m, 64 * m, m, m, 0, c_white, 1);

draw_set_color(c_white);
draw_set_alpha(1);

//draw the text
draw_set_halign(fa_center);
draw_text_ext_transformed(c, audio_y1,"Audio",2,12,m,m,0);
//draw_rectangle(audio_x1,audio_y1,audio_x2,audio_y2,true);

draw_text_ext_transformed(c, video_y1,"Video",2,12,m,m,0);
//draw_rectangle(video_x1,video_y1,video_x2,video_y2,true);

draw_text_ext_transformed(c, controls_y1,"Controls",2,12,m,m,0);
//draw_rectangle(controls_x1,controls_y1,controls_x2,controls_y2,true);

draw_sprite_ext(spr_back,0,c,controls_y1+controls_height+18*m,m,m,0,c_white,1);
//draw_rectangle(controls_x1,controls_y1,controls_x2,controls_y2,true);

switch state {

	case "audio":
		pointer_x = audio_x1;
		pointer_y = audio_y1+audio_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
	
	case "video":
		pointer_x = video_x1;
		pointer_y = video_y1+video_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
	
	case "controls":
		pointer_x = controls_x1;
		pointer_y = controls_y1+controls_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;

}