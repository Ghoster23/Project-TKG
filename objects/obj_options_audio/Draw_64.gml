//draw_black rectangle

draw_set_font(font_ig_menu);

scr_9SB_ext(spr_menu_frame_9s, hc - 96 * m, vc - 128 * m, hc + 96 * m, vc + 160 * m, m, m);

draw_set_color(c_white);
draw_set_alpha(1);

//draw the text
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext_transformed(hc, audio_y1,"Audio Options",2,200,m,m,0);
draw_line_width(audio_x1,audio_y2,audio_x2,audio_y2,2*m);
//draw_rectangle(audio_x1,audio_y1,audio_x2,audio_y2,true);

mastervolume=scr_volume("a",global.masterVolume);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext_transformed(hc, master_y1,"Master",2,90,m,m,0);
draw_sprite_ext(spr_volumebar,mastervolume,hc,master_y1+(master_height),m,m,0,c_white,1);
//draw_rectangle(master_x1,master_y1,master_x2,master_y2,true);

musicvolume=scr_volume("a",global.musicVolume);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext_transformed(hc, music_y1,"Music",2,90,m,m,0);
draw_sprite_ext(spr_volumebar,musicvolume,hc,music_y1+(music_height),m,m,0,c_white,1);
//draw_rectangle(music_x1,music_y1,music_x2,music_y2,true);

effectsvolume=scr_volume("a",global.effectsVolume);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext_transformed(hc, effects_y1,"Effects",2,12,m,m,0);
draw_sprite_ext(spr_volumebar,effectsvolume,hc,effects_y1+effects_height,m,m,0,c_white,1);
//draw_rectangle(effects_x1,effects_y1,effects_x2,effects_y2,true);

ambientvolume=scr_volume("a",global.ambientVolume);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext_transformed(hc, ambient_y1,"Ambient",2,12,m,m,0);
draw_sprite_ext(spr_volumebar,ambientvolume,hc,ambient_y1+ambient_height,m,m,0,c_white,1);
//draw_rectangle(ambient_x1,ambient_y1,ambient_x2,ambient_y2,true);

creaturesvolume=scr_volume("a",global.creatureNoise);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext_transformed(hc, creatures_y1,"Creatures",2,12,m,m,0);
draw_sprite_ext(spr_volumebar,creaturesvolume,hc,creatures_y1+creatures_height,m,m,0,c_white,1);
//draw_rectangle(creatures_x1,creatures_y1,creatures_x2,creatures_y2,true);

//back
draw_sprite_ext(spr_back,0,hc,creatures_y1+creatures_height+18*m,m,m,0,c_white,1);


switch state{

	case "master":
		pointer_x = master_x1;
		pointer_y = master_y1+master_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
	
	case "music":
		pointer_x = music_x1;
		pointer_y = music_y1+music_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
	
	case "effects":
		pointer_x = effects_x1;
		pointer_y = effects_y1+effects_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "ambient":
		pointer_x = ambient_x1;
		pointer_y = ambient_y1+ambient_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "creatures":
		pointer_x = creatures_x1;
		pointer_y = creatures_y1+creatures_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
}