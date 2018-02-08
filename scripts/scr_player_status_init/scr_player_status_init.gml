enum statuses{
	poison  = 0,
	stuck   = 1,
	regen   = 2,
	compass = 3,
	ohko    = 4,
	seeall  = 5,
	midas   = 6,
	immune  = 7
}

//Initialize first two paramenters
for(var i = 0; i < 8; i++){
	global.status[i,0] = 0;
	global.status[i,1] = 0;
}

//Sprites
global.status[0,2] = spr_poisoned; //Poison
global.status[1,2] = spr_stuck;    //Stuck
global.status[2,2] = spr_regen;    //Regen
global.status[3,2] = spr_compass;  //Compass
global.status[4,2] = spr_ohko;     //OHKO
global.status[5,2] = spr_seeall;   //See all
global.status[6,2] = spr_midastch; //Midas
global.status[7,2] = spr_immu;     //Immunity