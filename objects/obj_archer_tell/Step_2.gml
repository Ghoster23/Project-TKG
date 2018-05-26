/// @description Insert description here
if instance_exists(owner) {
	x = owner.x;
	y = owner.y - 32;
	
	if(not owner.weapon.attack){
	instance_destroy();
}
}