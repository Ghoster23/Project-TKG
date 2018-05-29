if type!="end"{

	//draw text box
	stringHeight=string_height(text);
	textHeight=string_height_ext(text,stringHeight,boxWidth)+stringHeight;
	yscale=textHeight/boxHeight;
	draw_sprite_ext( spr_textbox, 0, x, y, 1, yscale,0,c_white,1 );

	//draw npc name
	draw_set_font(fnt_text);
	draw_text(x,y,npc_name); 
	
	
	//if typing is on draw text
	if typing==true{
	
		text_temp=string_copy(text,0,letter);
		letter+=text_scroll_speed;
		draw_text_ext(x,y+stringHeight,text_temp,stringHeight,boxWidth);
		        
		//handle voice sound
		if text_break==false{
			voice=scr_voice(npc_name);
		}
		else{
			audio_stop_sound(voice);	
		}	
				  
		//control breaks
		if text_break==false and (string_char_at(text_temp,letter-1)=="," or
		   string_char_at(text_temp,letter-1)=="." or
		   string_char_at(text_temp,letter-1)=="!" or 
		   string_char_at(text_temp,letter-1)=="?") {
			   
			audio_stop_sound(voice);
		   
			text_break=true;
			prev_scroll_speed=text_scroll_speed;
			text_scroll_speed=0;
			alarm[0]= room_speed*text_break_time;
		}  
		
		if (text_temp==text){
			typing=false;
			audio_stop_sound(voice);
		}	
		
	}
	
	//if typing is off reset letter and write the rest of the text
	else{
		letter=0;
		draw_text_ext(x,y+stringHeight,text,stringHeight,boxWidth);
		audio_stop_sound(voice);
	}
}