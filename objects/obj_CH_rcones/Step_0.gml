if(not instance_exists(obj_CH_tree_state)){
	instance_destroy();
}

if(instance_exists(obj_CH_root)){
	if obj_CH_root.swing and not global.pause{
		image_alpha = 0.8;
		
	}
}

image_alpha -= 0.05;