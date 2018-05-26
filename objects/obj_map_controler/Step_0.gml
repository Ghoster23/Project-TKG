//global.map_angle-=0.2;

scr_get_input();

if keyboard_check_pressed(vk_enter){
	room_goto(rm_level);
}

if(a_left || menu_left_key){
	global.char -= 1;
	global.char  = scr_wrap(global.char,0,11);
}

if(a_right || menu_right_key){
	global.char += 1;
	global.char  = scr_wrap(global.char,0,11);
}

if escape_key{
	room_goto_previous();
}

highltd = ds_list_find_value(ds_places,global.char);

//global.map_angle=lerp(global.map_angle,targetrotation,rotationspeed);
//global.map_angle=scr_approach(global.map_angle,rotation++,rotationspeed);
//obj_clouds1.image_angle = global.map_angle;

global.map_angle+=rot_speed;
obj_clouds1.image_angle+=rot_speed;