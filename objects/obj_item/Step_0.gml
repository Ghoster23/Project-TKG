/*if(z <= 0 && x_ != 0){
	
	
}else if(draw_script =={
	
}
*/

if pick_up == false{
	
	draw_script = scr_item_jump;

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
	
	//this is the bit when the the item connects with the ground and decides the bouncing
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
	
	//and in this bit we use a kinematic equation to determine the arc of the item
	}else{
		phy_linear_damping=0.5;
		z = (zzero + (speedzero*t) + (0.5*a*(t*t)));
		if(z > zmax-1){
			bounce = true;
		}
		t += 0.3;
	}
	
	//if the object as stopped and is on the ground then you can pick it up
	if(phy_speed <= 1 and z <= 1){
		pick_up = true;
		phy_linear_damping=5;
	}
}
else{
	draw_script = scr_draw_item_floor;
}


if(amount == -1){
	instance_destroy();
}





