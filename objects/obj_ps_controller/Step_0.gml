randomize();

if(room > 0){
	if(global.pause){
		part_system_automatic_update(global.ps,    false);
		part_system_automatic_update(global.ps_if, false);
		part_system_automatic_update(global.ps_ps, false);
	}else {
		part_system_automatic_update(global.ps,    true);
		part_system_automatic_update(global.ps_if, true);
		part_system_automatic_update(global.ps_ps, true);
	}
}