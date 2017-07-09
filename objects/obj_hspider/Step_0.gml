if(place_meeting(x,y,obj_ppon)) and visible == false{
    visible = true;
    global.combat += 1;
	alarm[0]=room_speed*2;
}

///Exist
if go and not global.pause{
    visible = true;


//states for enemy behaviour

	switch(state){
        case 0:  //move like a spider
			if moved==false{ 
			//show_debug_message("the spider is in state 0");
            //Get hspd and vspd
            hspd = lengthdir_x(e_spd,action_dir);
            vspd = lengthdir_y(e_spd,action_dir);
			
            //Move
            phy_position_x += hspd;
            phy_position_y += vspd;
            }
        break;
		
		case 1: //hide and shoot bombs
			//show_debug_message("the spider is in state 1");
		
		break; 
		
		case 2: //ded
			//show_debug_message("the spider is in state 2");
		break;
	}

}