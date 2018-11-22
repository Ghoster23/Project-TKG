/// @description  Attack with a bite
var offx = lengthdir_x(20,player_dir);
var offy = lengthdir_y(20,player_dir);

bite = scr_create_damage_dealer(x+offx,
								y+offy,
								obj_mage_ghost_bite,id,false,
								stat[stats.satk]*(1+modf[stats.satk]),
								stats.sdef,
								4,80);
								
bite.posoffx = offx;
bite.posoffy = offy;

alarm_set(10,attackpausetime);