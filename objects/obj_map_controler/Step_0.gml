if global.key_active[key_id.m_confirm]{
	room_goto(rm_level);
}

if(global.key_active[key_id.m_left] || global.key_active[key_id.left]){
	global.char -= 1;
	global.char  = scr_wrap(global.char,0,11);
}

if(global.key_active[key_id.m_right] || global.key_active[key_id.right]){
	global.char += 1;
	global.char  = scr_wrap(global.char,0,11);
}

if global.key_active[key_id.menu]{
	room_goto_previous();
}

highltd = ds_list_find_value(ds_places,global.char);

//global.map_angle=lerp(global.map_angle,targetrotation,rotationspeed);
//global.map_angle=scr_approach(global.map_angle,rotation++,rotationspeed);
//obj_clouds1.image_angle = global.map_angle;

global.map_angle+=rot_speed;
obj_clouds1.image_angle+=rot_speed;