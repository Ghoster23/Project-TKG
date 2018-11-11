///@param id
///@param type
switch argument1 {
	default:
		return string(argument0);	
	break;
	
	case "script":
		return script_get_name(argument0);
	break;
	
	case "sprite":
		return sprite_get_name(argument0);
	break;
	
	case "object":
		return object_get_name(argument0);
	break;
	
	case "sound":
		return audio_get_name(argument0);
	break;
	
	//FIXME
}