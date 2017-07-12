
///scr_slowdown
if global.pause!=true{
	speed -=1;

	if impact = true {
	    speed -= 1;
	}

	if place_meeting(x,y,obj_swing){
		speed=0;
		dir=point_direction(x,y,obj_body.x,obj_body.y)+180;
		physics_apply_impulse(x, y, lengthdir_x(3, dir ),lengthdir_y(3, dir ));

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

//will need to be moved eventually i think
if global.pause==true{
	physics_pause_enable(true);
}

if global.pause==false{
	physics_pause_enable(false);
}
//-----------------------------------------