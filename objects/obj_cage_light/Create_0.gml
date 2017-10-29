image_speed = 1;

em = part_emitter_create(global.ps_ps);
part_emitter_region(global.ps_ps,em,x,y,x,y,ps_shape_ellipse,ps_distr_linear);
part_emitter_stream(global.ps_ps,em,global.pt_embers,20);

i = 1;
c = 0;