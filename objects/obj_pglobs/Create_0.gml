///Game
scr_unique_inst();

//Game pause
global.pause = false;

//Measurements
global.roomwd = 672;
global.roomhg = 416;

///Gen
//Generation on-going
global.gen = false;

//Door lock
global.lock = false;

//Current Level
global.level = 0;

///Enemies
//Active enemies
global.kld_enemies = 0;

global.killer      = 0;

//Coins
global.coins       = 0;

global.total_coins = 0;

///Player Character
global.body    =  obj_body;
global.weapon  = obj_sword;
global.flight  =     false;
global.p_level =         0;

//Player dead
dead = false;

//Player shout
shout = true;

//Invulnerabillity
global.p_inv = false;

//Character Selection
global.char = 0;

//Bodies
bodies[ 0] = obj_body;
bodies[ 1] = obj_body;/*Harlow*/
bodies[ 2] = obj_body;/*Brenton*/
bodies[ 3] = obj_body;/*Penelope*/
bodies[ 4] = obj_luna_body;
bodies[ 5] = obj_body;/*Mahli*/
bodies[ 6] = obj_body;/*Thalia*/
bodies[ 7] = obj_body;/*Alexis*/
bodies[ 8] = obj_body;/*Zimri*/
bodies[ 9] = obj_body;/*Calista*/
bodies[10] = obj_body;/*Straton*/
bodies[11] = obj_body;/*Dorothea*/
bodies[12] = obj_body;/*Nox*/

//Stats
scr_ini_char_stats();

global.maxhp = global.ds_char_stat_grid[# global.char, 0];
global.hp    = global.maxhp;
global.atk   = global.ds_char_stat_grid[# global.char, 1];
global.def   = global.ds_char_stat_grid[# global.char, 2];
global.satk  = global.ds_char_stat_grid[# global.char, 3];
global.sdef  = global.ds_char_stat_grid[# global.char, 4];
global.spd   = global.ds_char_stat_grid[# global.char, 5];


///Dash
global.dash_cd = false;

//Hurt
global.p_hurt = false;

///Player abilities
//Jason
global.p_will    =  0;
global.p_maxwill = 60;

///Rooms
//Current Room
global.current_column = 4;
global.current_row    = 4;

global.fluid_detail = 16;