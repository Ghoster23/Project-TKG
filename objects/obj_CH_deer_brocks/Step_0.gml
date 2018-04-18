if(not instance_exists(creator)){
    instance_destroy();
}

if(place_meeting(x,y,global.body.feet) and abs(y - creator.phy_position_y) < 24 and creator.image_index == 0){
    
	scr_damage_player(0,global.b_atk * 2,global.p_stats[stats.def]);
        
	with creator {
	    instance_destroy();
	}
        
	instance_destroy();
}