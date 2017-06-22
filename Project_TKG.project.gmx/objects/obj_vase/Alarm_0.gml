part_type_direction(global.pt_vbits,point_direction(obj_body.x,obj_body.y,x,y),point_direction(obj_body.x,obj_body.y,x,y),0,0);
part_emitter_burst(global.ps,em,global.pt_smoke,10)
part_emitter_burst(global.ps,em,global.pt_vbits,5)
instance_destroy()

