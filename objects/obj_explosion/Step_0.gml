if global.pause==true{
	image_speed=0;
}
if global.pause==false{
	image_speed=1;
	if place_meeting(x,y,obj_body){
		if not global.p_hurt and not global.p_inv{
			global.p_hp -= damage div global.p_def;
			global.p_hurt = true;
		}
	}
}

