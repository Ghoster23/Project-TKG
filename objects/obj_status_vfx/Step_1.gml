if(!booted){
	if(owner != noone and instance_exists(owner)){
		width  = owner.sprite_width  * 0.6;
		height = owner.sprite_height * 0.6;
		
		off_x = owner.sprite_xoffset * 0.6;
		off_y = owner.sprite_yoffset * 0.6;
		
		booted = true;
	}
}

if(instance_exists(owner)){
	x = owner.x - off_x;
	y = owner.y - off_y;
	
	image_xscale = owner.image_xscale;
}else {
	instance_destroy();
}