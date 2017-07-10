/// @description Pause

///Pause all enemies
if global.pause == true and state != "pause"{
	prev_state = state;
	prev_image_speed = image_speed;
	prev_rotation = phy_fixed_rotation;
	
	state = "pause";
	image_speed = 0;
}

///Unpause all enemies
if global.pause == false and state == "pause"{
	state = prev_state;
	image_speed = prev_image_speed;
	phy_fixed_rotation = prev_rotation;
	
}