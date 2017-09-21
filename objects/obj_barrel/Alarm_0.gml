if die==false{
	flash=false;
}
else{
	//boom destroyed
	mp_grid_clear_cell(global.ai_grid,x div 32, y div 32);
	instance_destroy();
}