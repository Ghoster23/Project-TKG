///Game
//Game pause
global.pause = false;

///Enemies
//Active enemies
global.act_enemies = 0;
global.kld_enemies = 0;

global.killer = 0;

//Coins
global.coins = 0;

///Player Character
//Player dead
dead = false;

//Player shout
shout = true;

//Invulnerabillity
global.p_inv = false;

//Stats
global.p_maxhp = 20;
global.p_hp = 20;
global.p_atk = 10;
global.p_def = 5;
global.p_satk = 5;
global.p_sdef = 5;
global.p_spd = 4;

//Dash
global.dash_cd = false;

//Equipables
    ///Spawned
    for(var i = 0; i < 16; i++){
		///Spawned
		global.equipable[i] = false;
		
		///Equipped
		global.equiped[i] = false;
		
		//Counted
	    eq_active[i] = false;
	    
	}

//Statuses
status_check = true;
global.st_poison = false;
global.st_stuck = false;

global.p_hurt = false;

///Status duration
global.st_poison_d = 0;
global.st_stuck_d = 0;

//Character Selection
global.char = 0;

///Player Character body sprites
global.char_bsprs[0,0] = spr_body_up;
global.char_bsprs[0,1] = spr_body_down;
global.char_bsprs[0,2] = spr_body_side;
global.char_bsprs[0,3] = spr_body_still;
global.char_bsprs[0,4] = spr_roll_up;
global.char_bsprs[0,5] = spr_roll_down;
global.char_bsprs[0,6] = spr_roll_side;

///Player Character head sprites
global.char_hsprs[0] = spr_head;

//Player abilities
global.p_will = 1;

///Rooms
//Current Room
global.current_column = 4;
global.current_row = 4;

//Door Cooldown
global.d_cd = false;