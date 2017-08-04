scr_get_input();

///Create GUI
if(instance_exists(obj_body) && !instance_exists(obj_gui)){
    instance_create_layer(obj_body.x-240,obj_body.y-176,"IF",obj_gui);
}

//Physics toggling for game pausing
if room != rm_menu_1 and room != rm_menu_2 and room != rm_chsl and room != rm_dead{
	if global.pause {
		physics_pause_enable(true);
	}else {
		physics_pause_enable(false);
	}
}

///Equipables' effects
if(global.equiped[0] == true && eq_active[0] == false){
    global.p_atk = global.p_atk + 2;
    eq_active[0] = true; 
}
if(global.equiped[1] == true && eq_active[1] == false){
    global.p_hp = global.p_maxhp;
    eq_active[1] = true;
}

///Statuses
if status_check == true and not global.pause{
	//Poisoned
    if global.st_poison == true and global.st_poison_d > 0{
        global.p_hp -= 1;
        global.st_poison_d -= 3;
        
        if global.st_poison_d <= 0{
            global.st_poison = false;
			global.st_poison_d = 0;
        }
    }
    
	//Stuck
    if global.st_stuck == true{
    
        if global.st_stuck_d <= 0{
            global.st_stuck = false;
			global.st_stuck = 0;
        }
    }
        
    status_check = false;
    alarm[1] = 1 * room_speed;
}

///Current Room
if room == rm_level{
    if instance_exists(obj_body){
        global.current_column = obj_body.x div global.roomwd;
        global.current_row = obj_body.y div global.roomhg;
        
    }
}

///Abilities
if not global.pause{
	switch global.char {
		case 0:
			if alarm[3] == -1 and global.act_enemies > 0{
				alarm[3] = 0.1 * room_speed;
			}
		break;
	}
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