if(init == false and dir != 0){
	#region initialization
		var force = irandom_range(6,11);
		var dir_  = irandom_range(dir[0],dir[1]);
		physics_apply_impulse(x, y, lengthdir_x(force, dir_),lengthdir_y(force, dir_));
		image_index = irandom_range(0,image_number-1);
		
		phy_angular_velocity = rotation;
		
		fix1 = physics_fixture_create();
		physics_fixture_set_circle_shape(fix1,6);
		physics_fixture_set_density(fix1,0.5);
		physics_fixture_set_restitution(fix1,0.5);
		physics_fixture_set_linear_damping(fix1,1);
		physics_fixture_set_collision_group(fix1,1);
		my_fix=physics_fixture_bind(fix1, self);
		
		init = true;
		
	#endregion
}

if(init == false){
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
	phy_rotation = 0;
	image_alpha-=0.02;
	if(image_alpha<=0){
		instance_destroy();
	}
}

/*
angle += rotation;
phy_rotation = angle;





