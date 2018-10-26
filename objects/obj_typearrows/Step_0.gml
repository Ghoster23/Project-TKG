if global.frozen=true{ 
    exit;
}

if vari == "type"{
	//left arrow
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+8,y+14){
		if mouse_check_button_pressed(mb_left){
			
			if global.lvl_room_type==0{
				global.lvl_room_type=14;
			}
			else{
				global.lvl_room_type-=1;
			}
			global.lvl_room_number=0;
			scr_loadroom(global.lvl_room_type,global.lvl_room_number);
		}
	}
	//right arrow
	if point_in_rectangle(mouse_x,mouse_y,x+35,y,x+43,y+14){
		if mouse_check_button_pressed(mb_left){
			
			if global.lvl_room_type==14{
				global.lvl_room_type=0;
			}
			else{
				global.lvl_room_type+=1;
			}
			global.lvl_room_number=0;
			scr_loadroom(global.lvl_room_type,global.lvl_room_number);
		}
	}
}
else if vari == "edit"{
	//left arrow
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+8,y+14){
		if mouse_check_button_pressed(mb_left){
			
			if global.lvl_room_number==0{
				global.lvl_room_number=global.lvl_numrooms;
			}
			else{
				global.lvl_room_number-=1;
			}
			scr_loadroom(global.lvl_room_type,global.lvl_room_number);
		}
	}
	//right arrow
	if point_in_rectangle(mouse_x,mouse_y,x+35,y,x+43,y+14){
		if mouse_check_button_pressed(mb_left){
			
			if global.lvl_room_number==global.lvl_numrooms{
				global.lvl_room_number=0;
			}
			else{
				global.lvl_room_number+=1;
			}
			scr_loadroom(global.lvl_room_type,global.lvl_room_number);
		}
	}
}
