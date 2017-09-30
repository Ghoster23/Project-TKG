/// @description screenshake

switch screenshake_state{
	case "none":
		screenshake_state="low";
	break;
	
	case "low":
		screenshake_state="normal"
	break;
	
	case "normal":
		screenshake_state="high";
	break;
	
	case "high":
		screenshake_state="none"
	break;
}
