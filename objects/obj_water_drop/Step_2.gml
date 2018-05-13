switch state {
	case 0:
		if(image_xscale < 1 + v){
			image_xscale += rate;
			image_yscale += rate;
			
			x -= wd_inc;
			y -= wd_inc;
		}else {
			state = 1;
		}
	break;
	case 1:
		if(0.1 < image_xscale && image_xscale < 1 + v){
			image_xscale -= rate;
			image_yscale -= rate;
			
			x += wd_inc;
			y += wd_inc;
		}else {
			instance_destroy();
		}
	break;
}