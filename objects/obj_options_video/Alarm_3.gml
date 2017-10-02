/// @description particles
switch global.particles{
				case "none":
					global.particles="low";
				break;
	
				case "low":
					global.particles="normal"
				break;
	
				case "normal":
					global.particles="none";
				break;
			}