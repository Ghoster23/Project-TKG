part_type_direction(global.pt_cbits,point_direction(obj_body.x,obj_body.y,x,y),point_direction(obj_body.x,obj_body.y,x,y),0,0);
part_emitter_burst(global.ps_if,sm,global.pt_smoke,10)
part_emitter_burst(global.ps,em,global.pt_cbits,5)
mp_grid_clear_cell(global.ai_grid,x div 32, y div 32);
part_emitter_destroy(global.ps, em);
part_emitter_destroy(global.ps_if, sm);
scr_sound(snd_wood_bits1,snd_wood_bits2,snd_wood_bits3);
instance_destroy();