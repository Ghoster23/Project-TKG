/// @description Attack
if instance_exists(owner){
	image_xscale = -1*image_xscale;
	image_yscale = -1*image_yscale;
	var swing = scr_create_damage_dealer(x,y,owner.stat[stats.atk],stats.def,obj_e_swing,owner);
	instance_destroy(tell);
	owner.swing = false;
}