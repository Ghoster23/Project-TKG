if go == true and not global.pause {
	for(i = 0; i < 3; i += 1){
		if alarms[i] != -1{
			alarm[i] = alarms[i];
			alarms[i] = -1;
		}
	}

	switch(pattern){
	    case "f":
	        hspd = lengthdir_x(4,s_x);
	        vspd = lengthdir_y(4,s_x);
			phy_rotation = -(s_x+90);
	    break;
	    case "a":
	        if(once == false){
	            alarm[0] = 5 * room_speed;
	            once = true;
	        }
        
	        if distance_to_point(p_x,p_y) > 10{
	            i_dir = point_direction(x,y,p_x,p_y);
	        }else {
	            i_dir = irandom(360);
	        }
        
	        hspd = lengthdir_x(6,i_dir);
	        vspd = lengthdir_y(6,i_dir);
			phy_rotation = -(i_dir+90);
	    break;
		case "aa":
	        if(once == false){
	            alarm[0] = 5 * room_speed;
	            once = true;
	        }
        
	        i_dir = point_direction(x,y,global.body.x,global.body.y);
        
	        hspd = lengthdir_x(6,i_dir);
	        vspd = lengthdir_y(6,i_dir);
			phy_rotation = -(i_dir+90);
	    break;
	    case "c":
	        i_dir = irandom_range(180,360);
        
	        hspd = lengthdir_x(6,i_dir);
	        vspd = lengthdir_y(6,i_dir);
			phy_rotation = -(i_dir+90);
	    break;
	    case "w":
        
	        hspd = lengthdir_x(6,tree_dir);
	        vspd = lengthdir_y(6,tree_dir);
			phy_rotation = -(tree_dir+90);
	    break;
	}

	if(des == true){
	    if(place_meeting(x,y,object121)){
	        instance_destroy();
	    }
	}

	//Move
	phy_position_x += hspd;
	phy_position_y += vspd;

	//Damage the player
	if(place_meeting(x,y,global.body) and global.p_inv == false and global.p_hurt == false){
	    global.p_hp -= global.b_satk div global.p_sdef;
		global.p_hurt = true;
	    instance_destroy();
	}
	
}else if go == true{
	for(i = 0; i < 3; i += 1){
		if alarm[i] != -1{
			alarms[i] = alarm[i];
			alarm[i] = -1;
		}
	}
}

