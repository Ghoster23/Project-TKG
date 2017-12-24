/// @description Attack
if instance_exists(owner){
	image_xscale = -1*image_xscale;
	image_yscale = -1*image_yscale;
	instance_create_layer(x,y,"IF",obj_e_swing);
	instance_destroy(tell);
	owner.swing = false;
}