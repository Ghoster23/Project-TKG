var thiskey;
var newkey = keyboard_lastkey;
switch state{

		case "up_key":
			thiskey=ord("W");
			break;
	
		case "left_key":
			thiskey=ord("A");
			break;
		
		case "down_key":
			thiskey=ord("S");
			break;
		
		case "right_key":
			thiskey=ord("D");
			break;
		
		case "attack_key":
			thiskey=mb_left;
			break;
		
		case "mouse_r":
			thiskey=mb_right;
			break;
		
		case "dash_key":
			thiskey=vk_shift;
			break;
	
		//--------------------------//RIGHT//--------------------------//
	
		case "interact_key":
			thiskey=ord("F");
			break;
		
		case "potion_key":
			thiskey=ord("R");
			break;
		
		case "mmap_key":
			thiskey=ord("M");
			break;
		
		case "os_mmap_key":
			thiskey=vk_tab;
			break;
		
		case "enter_key":
			thiskey=vk_enter;
			break;
		
		case "menu_key":
			thiskey=vk_escape;
			break;
	}

keyboard_set_map(newkey, thiskey);
keyboard_set_map(thiskey, 0);