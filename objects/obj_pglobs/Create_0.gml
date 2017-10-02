///Game
scr_unique_inst();

//Game pause
global.pause = false;

//Measurements
global.roomwd = 672;
global.roomhg = 416;

//Gen
global.gen = false;

global.fallen_items = 0;

global.lock = false;

///Enemies
//Active enemies
global.kld_enemies = 0;

global.killer = 0;

//Coins
global.coins = 0;

///Player Character
global.body = obj_body;
global.weapon = obj_sword;
global.flight = false;

//Player dead
dead = false;

//Player shout
shout = true;

//Invulnerabillity
global.p_inv = false;

//Character Selection
global.char = 0;

//Stats
scr_ini_char_stats();

global.p_maxhp = global.ds_char_stat_grid[# global.char, 0];
global.p_hp = global.ds_char_stat_grid[# global.char, 0];
global.p_atk = global.ds_char_stat_grid[# global.char, 1];
global.p_def = global.ds_char_stat_grid[# global.char, 2];
global.p_satk = global.ds_char_stat_grid[# global.char, 3];
global.p_sdef = global.ds_char_stat_grid[# global.char, 4];
global.p_spd = global.ds_char_stat_grid[# global.char, 5];

//Dash
global.dash_cd = false;

//Equipables
    for(var i = 0; i < 16; i++){
		///Spawned
		global.equipable[i] = false;
		
		///Equipped
		global.equiped[i] = false;
		
		//Counted
	    eq_active[i] = false;
	    
	}
	
///Potion
global.potion[0] = 0;
global.potion[1] = c_white;

//Statuses
status_check = true;

///Positive
	global.st_regen = 0;
	
///Negative
	global.st_poison = 0;
	global.st_stuck = 0;

	global.p_hurt = false;

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