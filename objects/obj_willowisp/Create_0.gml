em = part_emitter_create(global.ps_if);
part_emitter_region(global.ps_if,em,x,x,y,y,pt_shape_circle,ps_distr_linear);

alarm[0] = 15 * room_speed;

path = path_add();

image_alpha = 0.7;
image_speed = 1.5;

e_spd = 5;
alarms[0] = -1;
prev_image_speed = 0;