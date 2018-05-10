/// @description In-Game Menu
scr_unique_inst();

state = "generation"; //State to start in

check = true; //Check for a state change

m = display_get_gui_width() / global.roomwd; //Aspect ratio

box_wd = 0; //Animation
alpha  = 0;

//Mouse position
mousex = 0;
mousey = 0;