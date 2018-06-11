if argument0 == "keyboard"{
	var newkey = keyboard_lastkey;
}
else if argument0 == "mouse"{
	var newkey = mouse_lastbutton;
}

switch state{

	case "up_key":
		global.key_binds[key_id.up]=newkey;
		break;
	
	case "left_key":
		global.key_binds[key_id.left]=newkey;
		break;
		
	case "down_key":
		global.key_binds[key_id.down]=newkey;
		break;
		
	case "right_key":
		global.key_binds[key_id.right]=newkey;
		break;
		
	case "attack_key":
		global.key_binds[key_id.skill_1]=newkey;
		break;
		
	case "mouse_r":
		global.key_binds[key_id.skill_2]=newkey;
		break;
		
	case "dash_key":
		global.key_binds[key_id.dash]=newkey;
		break;
	
	//--------------------------//RIGHT//--------------------------//
	
	case "interact_key":
		global.key_binds[key_id.interact]=newkey;
		break;
		
	case "consumable_key":
		global.key_binds[key_id.consume]=newkey;
		break;
		
	case "mmap_key":
		global.key_binds[key_id.map]=newkey;
		break;
		
	case "os_mmap_key":
		global.key_binds[key_id.mmap]=newkey;
		break;
		
	case "enter_key":
		global.key_binds[key_id.m_confirm]=newkey;
		break;
		
	case "menu_key":
		global.key_binds[key_id.menu]=newkey;
		break;
}

