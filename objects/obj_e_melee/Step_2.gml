///@description Follow the body
if instance_exists(owner){
	x=owner.x;
	y=owner.y;
	image_speed = 0;

	if owner.d == -3 {
		offs = -5;
	}else {
		offs = 5;
	}
}