if(fallingpit == true){
	draw_script = scr_draw_thing_floor;
	image_xscale = scr_aproach(image_xscale,0,0.1);
	image_yscale= scr_aproach(image_yscale,0,0.1);
	if(image_xscale==0){
		instance_destroy();
	}
	phy_linear_damping=5;
	exit;
}
if pick_up == false{
	
	draw_script = scr_thing_jump;

	if z>=10{
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
		
		if(place_meeting(x,y,obj_pit)){
			fallingpit = true;
			exit;
		}
		phy_linear_damping=5;
		stop = true; 
		//z = 0;
		if(phy_speed >= 1){
			speedzero = speedzero*0.5;
			bounce = false;
			t = 0;
			zmax = zzero + ((speedzero*speedzero) / (2*-a));
		}
	
	//and in this bit we use a kinematic equation to determine the arc of the thing
	}else{
		phy_linear_damping=0.5;
		z = (zzero + (speedzero*t) + (0.5*a*(t*t)));
		if(z > zmax-1){
			bounce = true;
		}
		t += 0.3;
	}
	
	//if the object as stopped and is on the ground then you can pick it up
	if(phy_speed <= 1 and z <= 4){
		pick_up = true;
		phy_linear_damping=5;
	}
}
else{
	image_xscale = 1;
	image_yscale = 1;
	draw_script = scr_draw_thing_floor;
	image_alpha-=0.02;
	if(image_alpha<=0){
		instance_destroy();
	}
}






