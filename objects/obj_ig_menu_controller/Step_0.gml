/// @description States
scr_get_input();

if(instance_exists(obj_cursor)){
	mousex = obj_cursor.x;
	mousey = obj_cursor.y;
}else {
	mousex = mouse_x;
	mousey = mouse_y;
}

if check == true{
	switch state{
		case "menu":
			///Unpause Game and close Menu
			if menu_key {
				state = "closed";
				check = false;
				alarm[0] = 0.5 * room_speed;
		
			///Open Mini Map
			}else if mmap_key	{
				state = "mmap";
				check = false;
				alarm[0] = 0.5 * room_speed;
		
			}
	
		break;
		case "status":
			///Close Status Screen and return to Menu
			if menu_key {
				state = "menu";
				check = false;
				alarm[0] = 0.5 * room_speed;
		
			}
	
		break;
		case "mmap":
			///Close Mini Map and return to Menu
			if menu_key {
				state = "menu";
				check = false;
				alarm[0] = 0.5 * room_speed;
		
			///Close Mini Map and Unpause Game	
			}else if mmap_key	{
				state = "closed";
				check = false;
				alarm[0] = 0.5 * room_speed;
		
			}
	
		break;
		case "closed":
			///Pause Game and open Menu
			if menu_key {
				state = "menu";
				check = false;
				alarm[0] = 0.5 * room_speed;
			
			///Pause Game and open Mini Map
			}else if mmap_key	{
				state = "mmap";
				check = false;
				alarm[0] = 0.5 * room_speed;
		
			}
	
		break;
		
		case "options":
			///Pause Game and open Menu
			if !instance_exists(obj_options_controller) and !instance_exists(obj_options_audio) and !instance_exists(obj_options_video) and !instance_exists(obj_options_controls) {
				state = "menu";
				check = false;
				alarm[0] = 0.5 * room_speed;
			}
		break;
		
		case "death":
			if menu_key {
				room_goto(rm_menu_1);
			}
		
		break;
		
		case "generation":
			if(!instance_exists(obj_gen_controller)){
				state = "closed";
			}
		break;
		
	}
	
	if(room == rm_dead){
		state = "death";
	}

}

if state != "closed" || global.dead || state = "generation" {
	global.pause = true;
}else {
	global.pause = false;
}

if(global.gen){
	state = "generation";
}