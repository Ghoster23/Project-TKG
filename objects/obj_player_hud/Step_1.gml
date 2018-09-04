/// @description Update needed variables
if(instance_exists(global.body)){
	visible = true;
	
	m = global.ratio;
	
	gui_WD = global.gui_WD;
	gui_HG = global.gui_HG;
	
	hc = gui_WD / 2;
	vc = gui_HG / 2;
	
	if(not global.pause){
		counter++;
		counter = counter mod 360;
	}
	
	if(global.body.stat[stats.hp] <= 0){
		instance_destroy();
	}
}else {
	visible = false;
}