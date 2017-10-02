/// @description text scroll speed
switch global.textscroll{
				case "low":
					global.textscroll="normal";
				break;
	
				case "normal":
					global.textscroll="high"
				break;
	
				case "high":
					global.textscroll="low";
				break;
			}