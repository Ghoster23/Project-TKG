/// @description Attack
if instance_exists(owner){
	image_xscale = -1*image_xscale;
	image_yscale = -1*image_yscale;
	var swing = scr_create_damage_dealer(x,y,obj_e_swing,owner,false,owner.stat[stats.atk],stats.def);
	instance_destroy(tell);
	owner.swing = false;
}