if(fallingpit == true){
	draw_script = scr_draw_thing_floor;
	
	image_xscale = scr_approach(image_xscale,0,0.1);
	image_yscale = scr_approach(image_yscale,0,0.1);
	
	if(image_xscale == 0){
		instance_destroy();
	}
	
	phy_linear_damping = 5;
	exit;
}

image_xscale = scr_approach(image_xscale,2,0.2);
image_yscale = scr_approach(image_yscale,2,0.2);


if z >= 10{
	physics_remove_fixture(self,my_fix)
	physics_fixture_set_collision_group(fix1,0);
	my_fix = physics_fixture_bind(fix1, self);
		
}else{
	physics_remove_fixture(self,my_fix)
	physics_fixture_set_collision_group(fix1,1);
	my_fix = physics_fixture_bind(fix1, self);
		
}


//calculate the z
	
//this is the bit when the the thing connects with the ground and decides the bouncing
if z <= 4 and bounce == true{
	instance_create_layer(x+8,y+8,layer,obj_water_drop);
	instance_destroy();
		
//and in this bit we use a kinematic equation to determine the arc of the thing
}else {
	phy_linear_damping=0.5;
	z = (zzero + (speedzero*t) + (0.5*a*(t*t)));
	if(z > zmax-1){
		bounce = true;
	}
	t += 0.3;
}
