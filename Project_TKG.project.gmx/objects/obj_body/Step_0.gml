/// @description Move the player
script_execute(state);
event_inherited();

var rotacao = 0;
rotacao = point_direction(x,y,mouse_x,mouse_y);

if not object_exists(obj_gui){
    instance_create(obj_body.x,obj_body.y,obj_gui)
}

if (rotacao > 315 or rotacao < 45){
    spr_body = global.char_bsprs[global.char,2];
    image_xscale = 1;
    image_speed = .5; 
    spr_side = 2;
    
    with(obj_head){
        image_index = 1;
    }                   
} 
else if rotacao < 135{
    spr_body = global.char_bsprs[global.char,0];
    image_speed = .5;  
    spr_side = 1;
    
    with(obj_head){
        image_index = 2;
    }                    
} 
else if rotacao < 225{
    spr_body = global.char_bsprs[global.char,2];
    image_xscale = -1;
    image_speed = .5; 
    spr_side = 3; 
    
    with(obj_head){
        image_index = 3;
    }                          
} 
else if rotacao < 315{
    spr_body = global.char_bsprs[global.char,1];
    image_speed = .5; 
    spr_side = 0;      
    
    with(obj_head){
        image_index = 0;
    }                     
} 

