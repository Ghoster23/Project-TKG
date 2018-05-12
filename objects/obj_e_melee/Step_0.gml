if not global.pause and instance_exists(owner){	
	scr_pause_end(alarm_count);
	
	if owner.state == 0{
		image_angle = owner.i_dir;
		
	}else if owner.state != 0{
		image_angle = owner.dir;
		
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
	scr_pause_start(alarm_count);

}

	