if(booted){
	if(!instance_exists(marked) and !marked.hidden){
		instance_destroy();
	}
	
	switch state {
		case 0:
			image_alpha  = scr_approach(image_alpha,0.4,0.005);
			image_xscale = scr_approach(image_xscale,1,0.0125);
			image_yscale = scr_approach(image_yscale,1,0.0125);
			
			if(image_xscale == 1){
				state = 1;
			}
		break;
		case 1:
			image_alpha = 0.4 + sin(a) * 0.15;
			a += 0.1;
			if(a >= 6.28){ a = 0;}
		break;
	}
	
	x = marked.x - marked.sprite_xoffset + marked.sprite_width  / 2;
	y = marked.y - marked.sprite_yoffset + marked.sprite_height / 2;
	
}