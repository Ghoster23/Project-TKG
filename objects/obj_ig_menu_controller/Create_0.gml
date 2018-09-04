/// @description In-Game Menu
scr_unique_inst();

state = "generation"; //State to start in

check = true; //Check for a state change

m = global.ratio; //ratio

box_wd = 20; //Animation
alpha  = 0;
mn_hg  = 160;

//Mouse position
mousex = 0;
mousey = 0;

options = ["Continue","Inventory","Map","Options","Exit"];
n_state = ["closed","inv","mmap","options",""];