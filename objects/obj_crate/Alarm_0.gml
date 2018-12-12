part_type_direction(global.pt_cbits,point_direction(global.body.x,global.body.y,x,y),point_direction(global.body.x,global.body.y,x,y),0,0);
part_emitter_burst(global.ps_if,sm,global.pt_smoke,10)

scr_physics_particle(irandom_range(1,3),spr_cbits,0,360);

mp_grid_clear_rectangle(mp_grid, x, y, x + 4, y + 4);

instance_create_layer(x,y,layer,obj_fluid_tile);
part_emitter_destroy(global.ps_if, sm);
//sounds
scr_sound(snd_wood_bits1,snd_wood_bits2,snd_wood_bits3);
instance_destroy();