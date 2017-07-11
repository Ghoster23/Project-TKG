/// @description spider timings
if state == 0{
	moved=true;
	}

if state == 1{
	if substate == "hiding"{ 
		substate = "shooting"; //stand still and shoot
	
		alarm[2]=room_speed*0.5;
	}
	
	else if substate == "shooting"{ 
		
		alarm[2]=room_speed*0.5;

	}
}