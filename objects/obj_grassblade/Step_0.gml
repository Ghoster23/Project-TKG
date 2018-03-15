if(place_meeting(x,y,obj_lifeform_parent) and move == false){ 
	counter=0;
	move = true;
}
if move==true{
	counter+=0.1;
	image_angle=10*sin(sideswing*2*pi*clamp(counter,0,1))
	if(!(place_meeting(x,y,obj_lifeform_parent))){
		move = false;
		image_angle=0;
	}
}
