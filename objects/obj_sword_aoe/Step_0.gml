if not global.pause {
	image_xscale=global.p_will*0.01
	image_yscale=global.p_will*0.01

	global.p_will-=0.2;

	if image_xscale<=0 or image_yscale<=0{
		instance_destroy();

	}
}