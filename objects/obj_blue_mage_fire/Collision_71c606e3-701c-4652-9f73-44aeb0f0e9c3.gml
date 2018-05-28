/// @description Insert description here
// You can write your code in this editor
if( on==true ){
	on = false;
	mages_controller.calculate = true;
	mages_controller.check_fires_all_off = true;
	part_particles_create(global.ps_if,x+16,y+16,global.pt_smoke,6);
}
