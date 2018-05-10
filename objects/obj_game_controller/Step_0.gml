scr_get_input();

//Stats
if(room == rm_char_select){
	scr_char_stats();
	
	global.body = bodies[global.char];
	
	global.dead = false;
}

///Create GUI
if(instance_exists(global.body) && !instance_exists(obj_gui)){
    instance_create_layer(global.body.x-240,global.body.y-176,"IF",obj_gui);
}

//Physics toggling for game pausing
if(room != rm_menu_1 and room != rm_char_select and room != rm_dead){
	if global.pause {
		physics_pause_enable(true);
	}else {
		physics_pause_enable(false);
	}
}


///patchwork no pay atention to this
if(room == rm_lvl_editor_test && global.dead){
	scr_char_stats();
	global.dead = false;
	room_goto(rm_lvl_editor);
}

if(room == rm_level && global.gen && not instance_exists(obj_gen_controller)){
	show_debug_message("--  Retry  --")
	room_restart();
}

///Debug
if keyboard_check_pressed(vk_f11){
    room_goto(rm_test);
}

if keyboard_check_pressed(vk_f12){
    room_restart();
}

if keyboard_check_pressed(vk_f4){
    room_goto(rm_CH_boss);
}

if keyboard_check_pressed(vk_f3){
    room_goto(rm_level);
}

if(keyboard_check_pressed(vk_f1)){
	scr_status_apply( statuses.immune, 60, global.body);
	scr_status_apply(   statuses.ohko, 60, global.body);
}