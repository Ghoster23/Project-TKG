/// @description hide and shoot loop
if state == 0{
	moved=true;
}

if state == 1{
	if substate == "hiding" and not collision_line(x,y,global.body.x,global.body.y,obj_solid_parent,false,true)
	and not collision_line(x,y,global.body.x,global.body.y,obj_below_ground_parent,false,true){ 
		substate = "shooting"; //stand still and shoot
		alarm[5]=room_speed*1;
		image_index=0;
		image_speed=2;
		alarm[7]=room_speed*0.25;
		
		
	}
	
	else if substate == "shooting"{ 
		
		alarm[5]=room_speed*1;
		image_index=0;
		image_speed=2;
		alarm[7]=room_speed*0.25;
	
	}
}