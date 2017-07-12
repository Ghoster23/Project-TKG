if global.pause==true{
	image_speed=0;
}
if global.pause==false{
	image_speed=1;
	if place_meeting(x,y,obj_body){
		if not global.p_inv and not global.invuln{
			global.p_hp -= damage div global.p_def;
			global.p_inv = true;
		}
	}
}

