global.feet_em = part_emitter_create(global.ps);
part_emitter_region(global.ps,global.pt_way,x-5,x+5,y+23-5,y+23+5,pt_shape_circle,ps_distr_linear);

poison_counter = 0;
prev_poison_counter = 0;

no_shadows = true;