if place_meeting(x+37,y,obj_wall_right){
    dir = 3;
    image_index = 2;
    offset = 10;
}
if place_meeting(x,y,obj_wall_up){
    dir = 2;
    image_index = 0;
}
if place_meeting(x-5,y,obj_wall_left){
    dir = 1;
    image_index = 1;
    offset = -10;
}
if place_meeting(x,y+37,obj_wall_down){
    dir = 0;
    image_index = 0;
}

if once == false{
part_emitter_region(global.ps,em,x+15+offset,x+17+offset,y+10,y+10,ps_shape_rectangle,ps_distr_linear);
once = true;
}

part_emitter_stream(global.ps,em,global.pt_fire,1);
//if instance_exists(obj_body){
//    if rm_cl == global.current_column and rm_rw == global.current_row{
//        lit = true;
//    }else {
//        lit = false;
//    }
//}

if flicker == true{
        randomize();
        r = random_range(-1,1);
        flicker = false;
        alarm[0] = 1;
    }

