if(room == rm_lvl_editor_test){
	global.fluid_detail += 2 * (global.fluid_detail div 2);
	
	if(global.fluid_detail == 13){
		global.fluid_detail = 3;
	}
}