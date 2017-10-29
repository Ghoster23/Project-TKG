scr_get_input();

/*if instance_exists(100024) {
	var i = 100024;
	show_debug_message(object_get_name(i.object_index));
}*/

//Stats
if room == rm_chsl {
	global.p_maxhp = global.ds_char_stat_grid[# global.char, 0];
	global.p_hp = global.ds_char_stat_grid[# global.char, 0];
	global.p_atk = global.ds_char_stat_grid[# global.char, 1];
	global.p_def = global.ds_char_stat_grid[# global.char, 2];
	global.p_satk = global.ds_char_stat_grid[# global.char, 3];
	global.p_sdef = global.ds_char_stat_grid[# global.char, 4];
	global.p_spd = global.ds_char_stat_grid[# global.char, 5];
	
}

///Create GUI
if(instance_exists(global.body) && !instance_exists(obj_gui)){
    instance_create_layer(global.body.x-240,global.body.y-176,"IF",obj_gui);
}

//Physics toggling for game pausing
if room != rm_menu_1 and room != rm_chsl and room != rm_dead{
	if global.pause {
		physics_pause_enable(true);
	}else {
		physics_pause_enable(false);
	}
}

///Equipables' effects
for(var i = 0; i < 16; i++){
	if global.equiped[i] and not eq_active[i]{
		scr_item_effects(i);
		
	}
}

///Statuses
if status_check == true and not global.pause{
	//Poisoned
    scr_player_status_check("st_poison");
    
	//Stuck
	
	//Regen
	scr_player_status_check("st_regen");
        
    status_check = false;
    alarm[1] = 1 * room_speed;
}

///Current Room
if room == rm_level{
    if instance_exists(global.body){
        global.current_column = global.body.x div global.roomwd;
        global.current_row = global.body.y div global.roomhg;
        
    }
}

///Abilities
if not global.pause{
	switch global.char {
		case 0:
			/*if alarm[3] == -1 and global.lock and global.p_will < 100{
				alarm[3] = 0.1 * room_speed;
			}*/
		break;
	}
}


///patchwork no pay atention to this
if(global.p_hp <= 0 && dead == false && room=rm_lvl_editor_test){
    global.p_maxhp = global.ds_char_stat_grid[# global.char, 0];
	global.p_hp = global.ds_char_stat_grid[# global.char, 0];
	global.p_atk = global.ds_char_stat_grid[# global.char, 1];
	global.p_def = global.ds_char_stat_grid[# global.char, 2];
	global.p_satk = global.ds_char_stat_grid[# global.char, 3];
	global.p_sdef = global.ds_char_stat_grid[# global.char, 4];
	global.p_spd = global.ds_char_stat_grid[# global.char, 5];
	room_goto(rm_lvl_editor);
}


///Death
if(global.p_hp <= 0 && dead == false){
    room_goto(rm_dead);
    dead = true;
}

///Game restart
if(room == rm_dead){
    if(interact_key == true){
        game_restart();
        
    }
   
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