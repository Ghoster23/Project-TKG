event_inherited();
die=false;
em = part_emitter_create(global.ps);
sm = part_emitter_create(global.ps_if);
part_emitter_region(global.ps,em,x,x+32,y,y+32,ps_shape_rectangle,ps_distr_linear);
part_emitter_region(global.ps_if,sm,x,x+32,y,y+32,ps_shape_rectangle,ps_distr_linear);
explosiondir =0;