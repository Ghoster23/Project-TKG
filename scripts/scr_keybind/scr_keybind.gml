if argument0 == "keyboard"{
	var newkey = keyboard_lastkey;
}
else if argument0 == "mouse"{
	var newkey = mouse_lastbutton;
}

switch state{

	case "up_key":
		global.up_key_bind=newkey;
		break;
	
	case "left_key":
		global.left_key_bind=newkey;
		break;
		
	case "down_key":
		global.down_key_bind=newkey;
		break;
		
	case "right_key":
		global.right_key_bind=newkey;
		break;
		
	case "attack_key":
		global.attack_key_bind=newkey;
		break;
		
	case "mouse_r":
		global.mouse_r_key_bind=newkey;
		break;
		
	case "dash_key":
		global.dash_key_bind=newkey;
		break;
	
	//--------------------------//RIGHT//--------------------------//
	
	case "interact_key":
		global.interact_key_bind=newkey;
		break;
		
	case "consumable_key":
		global.consumable_key_bind=newkey;
		break;
		
	case "mmap_key":
		global.mmap_key_bind=newkey;
		break;
		
	case "os_mmap_key":
		global.os_mmap_key_bind=newkey;
		break;
		
	case "enter_key":
		global.enter_key_bind=newkey;
		break;
		
	case "menu_key":
		global.menu_key_bind=newkey;
		break;
}

