///@description Returns an array with the icons for the skills for the characters
/// [ sprite, left_click, right_click, hold left_click, hold right_click]
switch global.char {
	case 0:
		return [spr_jason_skills,0,-1,1,2];
	break;
	case 4:
		return [-1,-1,-1,-1,-1];
	break;
	default:
		return [-1,-1,-1,-1,-1];
	break;
}