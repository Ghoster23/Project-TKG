/// @description  Attack with a bite 
bite = scr_create_damage_dealer(x+lengthdir_x(20,player_dir),
								y+lengthdir_y(20,player_dir),
								obj_mage_ghost_bite,id,false,
								stat[stats.satk]*(1+modf[stats.satk]),
								stats.sdef,
								2,0);
bite.posoffx = lengthdir_x(20,player_dir);
bite.posoffy = lengthdir_y(20,player_dir);

alarm_set(10,attackpausetime);