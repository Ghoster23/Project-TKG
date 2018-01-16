/// @description States
scr_get_input();

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
		case "stats":
			///Close Mini Map and return to Menu
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
				game_restart();
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

if state != "closed" || obj_pglobs.dead || state = "generation" {
	global.pause = true;
}else {
	global.pause = false;
}

if(global.gen){
	state = "generation";
}