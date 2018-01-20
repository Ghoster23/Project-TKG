randomize();

if global.pause {
	part_system_automatic_update(global.ps,false);
	part_system_automatic_update(global.ps_if,false);
	part_system_automatic_update(global.ps_ps,false);
}else {
	part_system_automatic_update(global.ps,true);
	part_system_automatic_update(global.ps_if,true);
	part_system_automatic_update(global.ps_ps,true);
}

if room == rm_dead and once == false{
once = true;

//Particles
part_type_destroy(global.pt_vbits);
part_type_destroy(global.pt_cbits);
part_type_destroy(global.pt_smoke);
part_type_destroy(global.pt_fire);
part_system_destroy(global.ps);
part_system_destroy(global.ps_if);

view_enabled = false;
}

