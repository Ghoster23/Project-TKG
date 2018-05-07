/// @description Attack
if instance_exists(owner){
	image_xscale = -1*image_xscale;
	image_yscale = -1*image_yscale;
	var swing = instance_create_layer(x,y,"IF",obj_e_swing);
	swing.stat[stats.atk] = owner.stat[stats.atk];
	swing.damage = dmg;
	swing.creator = id;
	swing.owner = owner;
	instance_destroy(tell);
	owner.swing = false;
}