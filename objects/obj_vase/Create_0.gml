randomize();
image_speed = 0;
image_index = irandom(8);
em = part_emitter_create(global.ps);
part_emitter_region(global.ps,em,x,x+32,y,y+32,ps_shape_rectangle,ps_distr_linear);
event_inherited();
