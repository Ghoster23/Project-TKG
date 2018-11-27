x = scr_approach(x,tx,5);
y = scr_approach(y,ty,5);
offs = scr_approach(offs,64,10);

shadow.x = x + 8;
shadow.y = y + offs;

if(tx == x && ty == y){
	part_particles_create(global.ps_if,x,y,global.pt_icebits,18);
	part_particles_create(global.ps_ps,x,y,global.pt_haze,9);
	
	var len = ds_list_size(global.act_enemy_list);
	for(var i = 0; i < len; i++){
		var e = global.act_enemy_list[| i];
				
		if(instance_exists(e)){
			scr_status_apply(statuses.frozen,30,e);
		}
	}
	
	instance_destroy(shadow);
	instance_destroy();
}