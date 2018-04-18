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

switch highltd{
	case obj_capital:
		targetrotation=20;
		break;
	case obj_hydra:
		targetrotation=145;
		break;
	case obj_lighthouse:
		targetrotation=10;
		break;
	case obj_windmill:
		targetrotation=36;
		break;
	case obj_jungle:
		targetrotation=69;
		break;
	case obj_tree:
		targetrotation=200;
		break;
	case obj_birds:
		targetrotation=130;
		break;
	case obj_coleseum:
		targetrotation=300;
		break;
	case obj_mountains:
		targetrotation=0;
		break;
	case obj_scholarplace:
		targetrotation=130;
		break;
	case obj_littlehouses:
		targetrotation=54;
		break;
	case obj_moderncity:
		targetrotation=60;
		break;
}
//global.map_angle=lerp(global.map_angle,targetrotation,rotationspeed);
global.map_angle=scr_aproach(global.map_angle,targetrotation,rotationspeed);
obj_clouds1.image_angle = global.map_angle;