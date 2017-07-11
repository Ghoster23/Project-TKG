if instance_exists(obj_bdesign) {
    with obj_bdesign instance_destroy();
    }
image_index=0
image_speed=1

switch (global.char_selection){
    case 0:
        image_blend=c_white
        break;
    case 1:
        image_blend=make_colour_rgb(140,20,20)
        break;
    case 2:
        image_blend=make_colour_rgb(98,23,45)
        break;
    case 3:
        image_blend=make_colour_rgb(105,62,27)
        break;     
    case 4:
        image_blend=make_colour_rgb(58,175,206)
        break;    
    case 5:
        image_blend=make_colour_rgb(95,133,29)
        break;    
    case 6:
        image_blend=make_colour_rgb(15,137,128)
        break;
    case 7:
        image_blend=make_colour_rgb(72,72,72) 
        break;    
    case 8:
        image_blend=make_colour_rgb(32,32,32)  
        break; 
    case 9:
        image_blend=make_colour_rgb(209,100,23) 
        break;    
    case 10:
        image_blend=make_colour_rgb(2,60,153)
        break;     
    case 11:
        image_blend=make_colour_rgb(212,143,17) 
        break;   
    case 12:
        image_blend=make_colour_rgb(41,23,88)
        break;  
}

alarm[0]=15

