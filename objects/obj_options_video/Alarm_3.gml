/// @description particles
switch particles_state{
				case "none":
					particles_state="low";
				break;
	
				case "low":
					particles_state="normal"
				break;
	
				case "normal":
					particles_state="none";
				break;
			}