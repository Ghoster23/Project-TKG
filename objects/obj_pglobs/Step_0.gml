scr_get_input();

///Create GUI
if(instance_exists(obj_body) && !instance_exists(obj_gui)){
    instance_create_layer(obj_body.x-240,obj_body.y-176,"IF",obj_gui);
}

///Equipables' effects
if(global.eq_0 == true && eq_0c == false){
    global.p_atk = global.p_atk + 2;
    eq_0c = true; 
}
if(global.eq_1 == true && eq_1c == false){
    global.p_hp = global.p_maxhp;
    eq_1c = true;
}


///GUI - should probably move this
if(instance_exists(obj_body) and instance_exists(obj_gui)){
if(global.p_hp > global.p_maxhp*0.10*9 && global.p_hp <= global.p_maxhp){
    obj_gui.image_index = 0;
}
if(global.p_hp > global.p_maxhp*0.10*8 && global.p_hp <= global.p_maxhp*0.10*9){
    obj_gui.image_index = 1;
}
if(global.p_hp > global.p_maxhp*0.10*7 && global.p_hp <= global.p_maxhp*0.10*8){
    obj_gui.image_index = 2;
}
if(global.p_hp > global.p_maxhp*0.10*6 && global.p_hp <= global.p_maxhp*0.10*7){
    obj_gui.image_index = 3;
}
if(global.p_hp > global.p_maxhp*0.10*5 && global.p_hp <= global.p_maxhp*0.10*6){
    obj_gui.image_index = 4;
}
if(global.p_hp > global.p_maxhp*0.10*4 && global.p_hp <= global.p_maxhp*0.10*5){
    obj_gui.image_index = 5;
}
if(global.p_hp > global.p_maxhp*0.10*3 && global.p_hp <= global.p_maxhp*0.10*4){
    obj_gui.image_index = 6;
}
if(global.p_hp > global.p_maxhp*0.10*2 && global.p_hp <= global.p_maxhp*0.10*3){
    obj_gui.image_index = 7;
}
if(global.p_hp > global.p_maxhp*0.10*1 && global.p_hp <= global.p_maxhp*0.10*2){
    obj_gui.image_index = 8;
}
if(global.p_hp > 0 && global.p_hp <= global.p_maxhp*0.10*1 ){
    obj_gui.image_index = 9;
}
if(global.p_hp == 0 && instance_exists(obj_gui)){
    obj_gui.image_index = 10;
}
}

///Statuses
if status_check == true{
    if global.st_poison == true and global.st_poison_d > 0{
        global.p_hp -= 1;
        global.st_poison_d -= 5;
        
        if global.st_poison_d <= 0{
            global.st_poison = false;
        }
    }
    
    if global.st_stuck == true{
    
        if global.st_stuck_d <= 0{
            global.st_stuck = false;
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

///Debug
if keyboard_check_pressed(vk_f11){
    room_goto(rm_test);
}

if keyboard_check_pressed(vk_f4){
    room_goto(rm_CH_boss);
}

