scr_get_input();

if potion_key and global.potion[1] != c_white{
	switch global.potion[1] {
		case c_red:
			global.st_regen = 4 * image_index;
		break;
		case c_yellow:
			alarm[0] = 15 * room_speed * image_index;
		break;
		case c_teal:
			alarm[1] = 30 * room_speed * image_index;
		break;
		case c_fuchsia:
			alarm[2] = 300 * room_speed * image_index;
		break;
		case c_purple:
			global.st_poison = 0;
		break;
		case c_navy:
		break;
		case c_orange:
			alarm[3] = 10 * room_speed * image_index;
		break;
	}
	
	global.potion[1] = c_white;
	global.potion[0] = 0;
}