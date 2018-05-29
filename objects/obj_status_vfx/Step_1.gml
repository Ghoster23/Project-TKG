if(!booted){
	if(owner != noone and instance_exists(owner)){
		width  = owner.sprite_width;
		height = owner.sprite_height;
		
		off_x = owner.sprite_xoffset;
		off_y = owner.sprite_yoffset;
		
		booted = true;
	}
}

if(instance_exists(owner)){
	x = owner.x - owner.sprite_xoffset;
	y = owner.y - owner.sprite_yoffset;
}else {
	instance_destroy();
}