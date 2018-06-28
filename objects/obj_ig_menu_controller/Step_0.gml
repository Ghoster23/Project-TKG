/// @description States
if(instance_exists(obj_cursor)){
	mousex = obj_cursor.x;
	mousey = obj_cursor.y;
}else {
	mousex = device_mouse_x_to_gui(0);
	mousey = device_mouse_y_to_gui(0);
}

if check == true{
	switch state{
		case "menu":
			///Unpause Game and close Menu
			if global.key_active[key_id.menu] {
				state = "closed";
				check = false;
				alarm[0] = 0.5 * room_speed;
				box_wd = 20;
		
			///Open Mini Map
			}else if global.key_active[key_id.mmap]{
				state = "mmap";
				check = false;
				alarm[0] = 0.5 * room_speed;
		
			}
	
		break;
		case "inv":
			///Close Status Screen and return to Menu
			if global.key_active[key_id.menu] {
				state = "menu";
				check = false;
				alarm[0] = 0.5 * room_speed;
				
				obj_view.target = noone;
				obj_view.t_zoom = 1;
		
			}else if global.key_active[key_id.inv] {
				state = "closed";
				check = false;
				alarm[0] = 0.5 * room_speed;
				
				obj_view.target = noone;
				obj_view.t_zoom = 1;
			}
	
		break;
		case "mmap":
			///Close Mini Map and return to Menu
			if global.key_active[key_id.menu] {
				state = "menu";
				check = false;
				alarm[0] = 0.5 * room_speed;
		
			///Close Mini Map and Unpause Game	
			}else if global.key_active[key_id.mmap]{
				state = "closed";
				check = false;
				alarm[0] = 0.5 * room_speed;
		
			}
	
		break;
		case "closed":
			///Pause Game and open Menu
			if global.key_active[key_id.menu] {
				state = "menu";
				check = false;
				alarm[0] = 0.5 * room_speed;
			
			///Pause Game and open Mini Map
			}else if global.key_active[key_id.mmap]{
				state = "mmap";
				check = false;
				alarm[0] = 0.5 * room_speed;
		
			}else if global.key_active[key_id.inv] {
				state = "inv";
				check = false;
				alarm[0] = 0.5 * room_speed;
				
				obj_view.target = global.body;
				obj_view.t_zoom = 2;
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
			if global.key_active[key_id.menu] {
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