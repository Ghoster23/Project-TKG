event_inherited();

///Exist
if go and not global.pause{
	scr_pause_end(alarm_count);
	
	//check if dead and if so kill it
	if(stat[stats.hp] <= 0){
		state = "dead";
	}
	
	//apply invulnerability
	/*if(state == "chase" or state == "attack" or state == "attack_pause" or state == "break"){
		inv = true;
	}
	else{
		inv = false;
	}*/

	//states for enemy behaviour
	switch(state){
        case "chase":  //chase player until ghost can attack
			if instance_exists(global.body){
				scr_define_path(self, global.body);
				scr_move_entity(point_direction(x,y,path_get_point_x(mp_path,1),path_get_point_y(mp_path,1)),0.65);
			}
			
			if(dis<=35){
				physics_apply_impulse(x,y,lengthdir_x(25,player_dir),lengthdir_y(25,player_dir));
				state = "attack";
			}
			if(stat[stats.arm] == 0){
				state = "break";
				flash = true;
				alarm_set(8,0);
			}
        break;
		
		case "attack": //use spear to try and poke player
			alarm_set(8,attack_break_time);
			
			if(!spear.key[0]){
                key[0] = true;
            }
			
			state = "attack_pause";
			if(stat[stats.arm] == 0){
				state = "break";
				flash = true;
				alarm_set(8,0);
			}
			
		case "attack_pause":
			if(spear.key[0]){
                key[0] = false;
            }
		
			if(stat[stats.arm] == 0){
				state = "break";
				flash = true;
				alarm_set(8,0);
			}
		break;
		
		case "break": //ghost is knocked out of armor and drops spear
			key[0] = false;
			flash = false;
			scr_physics_particle(1,spr_ghost_armor,0,360);
			scr_physics_particle(1,spr_ghost_helmet,0,360);
			scr_physics_particle(2,spr_spear_bits,0,360,500);
			state = "run_away";
			spear.image_alpha = 0;
			armor.image_alpha = 0;
			alarm_set(9,reconstruct_time);
			
		break;
		
		case "run_away": //ghost runs from player looking frigthened
			stat[stats.spd]  =  5;
			if instance_exists(global.body){
				scr_define_path(self, global.body);
				scr_move_entity(point_direction(x,y,path_get_point_x(mp_path,1),path_get_point_y(mp_path,1)),-0.65);
			}
		break;
		
		case "reconstruct": //ghost joins with armor once again
			inv = true;
		break;
		
		case "dead": //dead
			instance_destroy(spear);
			instance_destroy(armor);
			part_particles_create(global.ps_if,x,y,global.pt_smoke,10);	
            scr_kill_enemy();
		break;
	}

}else if go{
	scr_pause_start(alarm_count);
}
