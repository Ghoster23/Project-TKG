scr_get_input();

if potion_key and global.potion[1] != c_white{
	switch global.potion[1] {
		case c_red:
			scr_player_status_apply(2,4 * global.potion[0] + 1);
		break;
		case c_yellow:
			scr_player_status_apply(6,15 * (global.potion[0] + 1));
		break;
		case c_teal:
			scr_player_status_apply(5,60 * (global.potion[0] + 1));
		break;
		case c_fuchsia:
			scr_player_status_apply(4,10 * (global.potion[0] + 1));
		break;
		case c_purple:
			global.status[0,0] = 0;
		break;
		case c_navy:
			scr_player_status_apply(3,60 * (global.potion[0] + 1));
			global.room_change = true;
		break;
		case c_orange:
			scr_player_status_apply(7,10 * (global.potion[0] + 1));
		break;
	}
	
	global.potion[1] = c_white;
	global.potion[0] = 0;
}