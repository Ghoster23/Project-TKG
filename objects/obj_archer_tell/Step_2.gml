if instance_exists(owner) {
	x = owner.x;
	y = owner.y - 32;
	
	if(not owner.weapon.executing == -1){
		instance_destroy();
	}
}