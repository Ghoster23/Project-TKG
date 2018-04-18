if(not instance_exists(creator)){
    instance_destroy();
	
}else {
	height = abs(y - creator.y);
	image_alpha = max_height / height - 1;
	
	if(place_meeting(x,y,global.body.feet) and height < 24){
	    if(not global.p_inv and not global.p_hurt and global.p_stats[stats.hp] > 0){
	        global.p_stats[stats.hp] -= 1;
        
	        with(creator){
	            instance_destroy();
	        }
        
	        instance_destroy();
	    }
	}
}