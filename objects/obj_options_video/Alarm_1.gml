/// @description screenshake

switch global.screenshake{
	case "none":
		global.screenshake="low";
	break;
	
	case "low":
		global.screenshake="normal"
	break;
	
	case "normal":
		global.screenshake="high";
	break;
	
	case "high":
		global.screenshake="none"
	break;
}
