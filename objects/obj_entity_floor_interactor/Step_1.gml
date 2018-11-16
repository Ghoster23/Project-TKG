if(owner != noone){
	if(instance_exists(owner)){
		scr_follower_init(owner,0,-owner.sprite_yoffset+owner.sprite_height/2,1);
		boot = true;
	}else {
		instance_destroy();
	}
}