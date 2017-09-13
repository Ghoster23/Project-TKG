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
	}
}

if state != "closed"{
	global.pause = true;
}else {
	global.pause = false;
}