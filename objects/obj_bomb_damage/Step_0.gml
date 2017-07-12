if wither==true{
	image_alpha-=0.008;
}

if image_alpha <= 0{
	instance_destroy();
}