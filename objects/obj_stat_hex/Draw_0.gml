/// @description Insert description here
// You can write your code in this editor
draw_self();

prev_p = [x,y];

curr_p = [x,y];

end_p = [x,y];

///Hp
curr_p = [x, y - p_maxhp / 50 * 28];

prev_p = curr_p;

end_p = curr_p;

//Atk
curr_p = [(x + 1) + p_atk / 50 * 26, (y - 1) - p_atk / 50 * 17];

draw_set_color(c_red);

draw_line_width(prev_p[0],prev_p[1],curr_p[0],curr_p[1],1);

//Def
prev_p = curr_p;

curr_p = [(x + 1) + p_def / 50 * 26, (y + 1) + p_def / 50 * 17];

draw_line_width(prev_p[0],prev_p[1],curr_p[0],curr_p[1],1);

//Spd
prev_p = curr_p;

curr_p = [x, (y + 2) + p_spd / 50 * 28];

draw_line_width(prev_p[0],prev_p[1],curr_p[0],curr_p[1],1);

//S Def
prev_p = curr_p;

curr_p = [x - p_sdef / 50 * 26, (y + 1) + p_sdef / 50 * 17];

draw_line_width(prev_p[0],prev_p[1],curr_p[0],curr_p[1],1);

//S Atk
prev_p = curr_p;

curr_p = [x - p_satk / 50 * 26, (y - 1) - p_satk / 50 * 17];

draw_line_width(prev_p[0],prev_p[1],curr_p[0],curr_p[1],1);

//End
draw_line_width(curr_p[0],curr_p[1],end_p[0],end_p[1],1);

draw_set_color(c_white);
