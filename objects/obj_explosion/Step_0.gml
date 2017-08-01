if global.pause==true{
	image_speed=0;
}
if global.pause==false{
	image_speed=1;
	if place_meeting(x,y,obj_body){
		scr_damage_player(1);
	}
}

