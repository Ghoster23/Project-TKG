if (wielded == true){


	if not global.pause and instance_exists(owner){
	
		if alarm_0 != -1{
			alarm[0] = alarm_0;
			alarm_0 = -1;
		}
	
		if owner.state == 0{
		    image_angle = owner.i_dir;
		
		}else if owner.state != 0{
		    image_angle = owner.dir;
		
		}

		if owner.state == 3 or not instance_exists(owner){
		    instance_destroy();
		
		}

		//atacking
		if owner.swing == true and alarm[0] == -1 and instance_exists(owner) and instance_exists(owner.head){
		    alarm[0] = 9;
		
			tell = instance_create_layer(owner.head.x,owner.head.y - 24,"IF",obj_melee_tell);
			
			with tell {
				owner = other.owner.head;
			}
		
		}
	
		if instance_exists(tell) and alarm[0] >= 5{
			tell.image_xscale = 1 / (alarm[0] - 4);
			tell.image_yscale = 1 / (alarm[0] - 4);
			
		}
	
	}else {
		if alarm[0] != -1{
			alarm_0 = alarm[0];
			alarm[0] = -1;
		
		}

	}
}
 
else{
	//if not wielded pop of of enemies hand
}
	