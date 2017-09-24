y_comp=y;
path_rotate(path_boat2,-0.2);

pt_rt-=0.2;
pt_rt=scr_wrap(pt_rt, 0, 360);

pt_pos+=0.0006;
pt_pos=scr_wrap(pt_pos, 0, 1)

path_start(path_boat2, 0.5, path_action_continue, true);
path_position=pt_pos;

