///@description Follow the body

image_speed = 0;
y=owner.y+2;
x=owner.x;

if instance_exists(owner){
	
	switch owner.d {
    case 0:
        break;
		
    case -1: //Left
		offpos=7;
        break;
    case -2: //Up and Right
    case -3: //Up
    case -4: //Up and Left
		offpos=-7;
		break;
		
    case 1: //Right
    case 2: //Left and Down
    case 3: //Down
    case 4: //Down and Right
		offpos=7;
        break;
	}
	
	x=owner.x+offpos;

	if owner.d == -3 {
	offs = -5;
	}else {
	offs =10;
	}
	
	
}
