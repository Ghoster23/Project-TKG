if(helper == noone){
	helper = instance_place(x,y,obj_wall_down_helper);
}else {
	if(!instance_exists(helper)){
		instance_destroy();
		exit;
	}
	image_alpha = helper.image_alpha;
}