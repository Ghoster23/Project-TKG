
///scr_slowdown
if global.pause!=true{
	speed -=1;

	if impact = true {
	    speed -= 1;
	}

	if place_meeting(x,y,obj_swing){
		speed=0;
		dir=point_direction(x,y,global.body.x,global.body.y)+180;
		flash=true;
		alarm[2]=room_speed*0.06;

	}
}

if global.pause == true {
	for(i = 0; i < 2; i += 1){
		if alarm[i] != -1{
			alarms[i] = alarm[i];
			alarm[i] = -1;
		}
	}
	
	if image_speed != 0{
		prev_image_speed = image_speed;
		image_speed = 0;
	}
}

if global.pause == false {
	for(i = 0; i < 2; i += 1){
		if alarms[i] != -1{
			alarm[i] = alarms[i];
			alarms[i] = -1;
		}
	}
	
	if prev_image_speed != 0{
		image_speed = prev_image_speed;
		prev_image_speed = 0;
	}

}