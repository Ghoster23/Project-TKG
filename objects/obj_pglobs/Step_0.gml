scr_get_input();

/*if instance_exists(100024) {
	var i = 100024;
	show_debug_message(object_get_name(i.object_index));
}*/

//Stats
if(room == rm_char_select){
	global.maxhp = global.ds_char_stat_grid[# global.char, 0];
	global.hp    = global.ds_char_stat_grid[# global.char, 0];
	global.atk   = global.ds_char_stat_grid[# global.char, 1];
	global.def   = global.ds_char_stat_grid[# global.char, 2];
	global.satk  = global.ds_char_stat_grid[# global.char, 3];
	global.p_sdef  = global.ds_char_stat_grid[# global.char, 4];
	global.spd   = global.ds_char_stat_grid[# global.char, 5];
	
	global.body    = bodies[global.char];
}

///Create GUI
if(instance_exists(global.body) && !instance_exists(obj_gui)){
    instance_create_layer(global.body.x-240,global.body.y-176,"IF",obj_gui);
}

//Physics toggling for game pausing
if room != rm_menu_1 and room != rm_char_select and room != rm_dead{
	if global.pause {
		physics_pause_enable(true);
	}else {
		physics_pause_enable(false);
	}
}


///patchwork no pay atention to this
if(global.hp <= 0 && dead == false && room = rm_lvl_editor_test){
    global.maxhp = global.ds_char_stat_grid[# global.char, 0];
	global.hp    = global.ds_char_stat_grid[# global.char, 0];
	global.atk   = global.ds_char_stat_grid[# global.char, 1];
	global.def   = global.ds_char_stat_grid[# global.char, 2];
	global.satk  = global.ds_char_stat_grid[# global.char, 3];
	global.p_sdef  = global.ds_char_stat_grid[# global.char, 4];
	global.spd   = global.ds_char_stat_grid[# global.char, 5];
	room_goto(rm_lvl_editor);
}


///Death
if(global.hp <= 0 && dead == false){
	global.status[1,0] = 1;
	global.pause       = true;
	dead               = true;
    
}

///Invulnerabillity guaranteed off
if global.p_inv and not (global.p_hurt or instance_exists(obj_roll)){
	global.p_inv = false;
}

///Debug
if keyboard_check_pressed(vk_f11){
    room_goto(rm_test);
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