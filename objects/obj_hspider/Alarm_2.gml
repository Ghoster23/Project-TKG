/// @description hide and shoot loop
if state == 0{
	moved=true;
	}

if state == 1{
	if substate == "hiding"{ 
		substate = "shooting"; //stand still and shoot
		alarm[2]=room_speed*1;
		image_index=0;
		image_speed=2;
		alarm[4]=room_speed*0.25;
		
		
	}
	
	else if substate == "shooting"{ 
		
		alarm[2]=room_speed*1;
		image_index=0;
		image_speed=2;
		alarm[4]=room_speed*0.25;
	
	}
}