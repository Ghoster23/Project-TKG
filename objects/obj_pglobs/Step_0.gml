scr_get_input();

//Stats
if(room == rm_char_select){
	scr_char_stats();
	
	global.body = bodies[global.char];
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
if(global.p_stats[stats.hp] <= 0 && dead == false && room = rm_lvl_editor_test){
	scr_char_stats();
	room_goto(rm_lvl_editor);
}


///Death
if(global.p_stats[stats.hp] <= 0 && dead == false){
	global.status[1,0] = 1;
	global.pause       = true;
	dead               = true;
    
}

///Invulnerabillity guaranteed off
if global.p_inv and not (global.p_hurt or instance_exists(obj_roll)){
	global.p_inv = false;
}

if(global.gen && not instance_exists(obj_gen_controller)){
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

if keyboard_check_pressed(vk_f1){
	scr_player_status_apply(4,60);
	scr_player_status_apply(7,60);
}