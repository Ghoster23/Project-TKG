///@description Returns the orientation of the entity based on the direction given
{
var dir = argument0;

//Figure out what direction you are facing
if (dir >=   0 and dir <=  45) or //Right
   (dir >= 315 and dir <= 360){
	return  0;
}else
if (dir >   45 and dir  < 135){   //UP
	return  1;
}else
if (dir >= 135 and dir <= 225){   //LEFT
	return  2;
}else
if (dir  > 225 and dir  < 315){   //DOWN
	return  3;
}
else {
	return  3;
}
}