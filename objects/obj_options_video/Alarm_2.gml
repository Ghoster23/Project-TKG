/// @description text scroll speed
switch textscroll_state{
				case "low":
					textscroll_state="normal";
				break;
	
				case "normal":
					textscroll_state="high"
				break;
	
				case "high":
					textscroll_state="low";
				break;
			}