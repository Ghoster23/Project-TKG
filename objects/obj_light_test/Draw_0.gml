  /// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(global.selected_light == id){
	draw_self();
	
	if(!(typing_radius or typing_color)){
		draw_sprite(spr_legendadebugg,0,x,y);
	}
	
	if(keyboard_check_pressed(ord("K"))){
		keyboard_string = "";
		typing_radius = true;
	}
	
	if(keyboard_check_pressed(ord("L"))){
		keyboard_string = "";
		typing_color = true;
	}
	
	if(typing_radius == true){
		draw_text(x+10,y-5,"Radius---> " + keyboard_string);
		if(keyboard_check_pressed(vk_enter)){
			var text = keyboard_string;
			base_radius = real(text);
			typing_radius = false;
		}
	}
	
	if(typing_color == true){
		draw_text(x+10,y+5,"Color(hue sat val)---> " + keyboard_string);
		if(keyboard_check_pressed(vk_enter)){
			var text = keyboard_string;
			
			var sep1 = 0;
			var sep2 = 0;
			
			for(i=0; i<10; i++){
				var char = string_char_at(keyboard_string,i);
				if(char == " "){
					if(sep1 == 0){
						sep1 = i;
					}
					else{
						sep2 = i;
					}
				}
			}
			image_blend = make_color_hsv(string_copy(keyboard_string,0,sep1),string_copy(keyboard_string,sep1+1,sep2-(sep1+1)),string_copy(keyboard_string,sep2+1,string_length(keyboard_string)));
			typing_color = false;
		}
	}
}

