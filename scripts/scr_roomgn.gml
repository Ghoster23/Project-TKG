{
roomhg = global.roomhg
roomwd = global.roomwd

 switch(typeroom){
 ///Type A
    case 0:
       instance_create(gx+32,gy+96,obj_rock);
       instance_create(gx+64,gy+96,obj_rock);
       instance_create(gx+32,gy+128,obj_rock);
       instance_create(gx+96,gy+160,obj_rock);
       instance_create(gx+128,gy+160,obj_rock);
       instance_create(gx+352,gy+160,obj_bat);
       instance_create(gx+96,gy+192,obj_rock);
       instance_create(gx+192,gy+224,obj_bat);
       instance_create(gx+320,gy+256,obj_psnt_body);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);
        
    break;
    case 1:
        instance_create(gx+192,gy+128,obj_vase);
       instance_create(gx+192,gy+160,obj_vase);
       instance_create(gx+416,gy+160,obj_chest);
       instance_create(gx+192,gy+192,obj_vase);
       instance_create(gx+192,gy+224,obj_vase);
       instance_create(gx+288,gy+224,obj_chest);
       instance_create(gx+384,gy+288,obj_crate);
       instance_create(gx+384,gy+320,obj_crate);
        
    break;
    case 2:
        instance_create(gx+(roomwd/2),gy+144+3*32,obj_ppoff);
       
        instance_create(gx+3*32,gy+4*32,obj_rock);
        instance_create(gx+6*32,gy+4*32,obj_rock);
        instance_create(gx+7*32,gy+4*32,obj_rock);
        instance_create(gx+8*32,gy+4*32,obj_rock);
        instance_create(gx+9*32,gy+4*32,obj_rock);

        instance_create(gx+3*32,gy+5*32,obj_rock);

        instance_create(gx+3*32,gy+6*32,obj_rock);
        instance_create(gx+11*32,gy+6*32,obj_rock);

        instance_create(gx+11*32,gy+7*32,obj_rock);

        instance_create(gx+5*32,gy+8*32,obj_rock);
        instance_create(gx+6*32,gy+8*32,obj_rock);
        instance_create(gx+7*32,gy+8*32,obj_rock);
        instance_create(gx+8*32,gy+8*32,obj_rock);
        instance_create(gx+11*32,gy+8*32,obj_rock);
       
        instance_create(gx+1*32,gy+3*32,obj_slm_a);
        instance_create(gx+13*32,gy+3*32,obj_slm_a);

        instance_create(gx+7*32,gy+6*32,obj_slm_a);

        instance_create(gx+1*32,gy+9*32,obj_slm_a);
        instance_create(gx+13*32,gy+9*32,obj_slm_a);
        
    break;
    case 3:
        instance_create(gx+(roomwd/2),gy+144+3*32,obj_ppoff);

        instance_create(gx+1*32,gy+3*32,obj_rock);
        instance_create(gx+13*32,gy+3*32,obj_rock);

        instance_create(gx+10*32,gy+4*32,obj_rock);

        instance_create(gx+9*32,gy+5*32,obj_rock);
        instance_create(gx+10*32,gy+5*32,obj_rock);

        instance_create(gx+8*32,gy+6*32,obj_rock);
        instance_create(gx+9*32,gy+6*32,obj_rock);
        instance_create(gx+10*32,gy+6*32,obj_rock);

        instance_create(gx+9*32,gy+7*32,obj_rock);
        instance_create(gx+10*32,gy+7*32,obj_rock);

        instance_create(gx+10*32,gy+8*32,obj_rock);

        instance_create(gx+1*32,gy+9*32,obj_rock);
        instance_create(gx+13*32,gy+9*32,obj_rock);

        instance_create(gx+2*32,gy+3*32,obj_slm_a);
        instance_create(gx+12*32,gy+3*32,obj_slm_a);

        instance_create(gx+2*32,gy+9*32,obj_slm_a);
        instance_create(gx+12*32,gy+9*32,obj_slm_a);
        
    break;
    case 4:
        instance_create(gx+(roomwd/2),gy+144+3*32,obj_ppoff);

       instance_create(gx+6*32,gy+3*32,obj_vase);
        instance_create(gx+8*32,gy+3*32,obj_vase);

       instance_create(gx+6*32,gy+9*32,obj_vase);
        instance_create(gx+8*32,gy+9*32,obj_vase);

       instance_create(gx+1*32,gy+5*32,obj_barrel);
        instance_create(gx+13*32,gy+5*32,obj_barrel);

       instance_create(gx+1*32,gy+7*32,obj_barrel);
        instance_create(gx+13*32,gy+7*32,obj_barrel);

       instance_create(gx+6*32,gy+5*32,obj_rock);
        instance_create(gx+8*32,gy+5*32,obj_rock);

        instance_create(gx+7*32,gy+6*32,obj_rock);

        instance_create(gx+6*32,gy+7*32,obj_rock);
       instance_create(gx+8*32,gy+7*32,obj_rock);

       instance_create(gx+3*32,gy+4*32,obj_slm_b);
        instance_create(gx+11*32,gy+4*32,obj_slm_b);

        instance_create(gx+3*32,gy+8*32,obj_slm_b);
        instance_create(gx+11*32,gy+8*32,obj_slm_b);
        
   break;
    case 5:
        instance_create(gx+(roomwd/2),gy+144+3*32,obj_ppoff);

       instance_create(gx+1*32,gy+3*32,obj_barrel);
        instance_create(gx+13*32,gy+9*32,obj_barrel);

       instance_create(gx+2*32,gy+5*32,obj_rock);
        instance_create(gx+3*32,gy+5*32,obj_rock);
       instance_create(gx+7*32,gy+5*32,obj_rock);
        instance_create(gx+11*32,gy+5*32,obj_rock);
       instance_create(gx+12*32,gy+5*32,obj_rock);

        instance_create(gx+4*32,gy+6*32,obj_rock);
       instance_create(gx+6*32,gy+6*32,obj_rock);
       instance_create(gx+8*32,gy+6*32,obj_rock);
       instance_create(gx+10*32,gy+6*32,obj_rock);

       instance_create(gx+5*32,gy+7*32,obj_rock);
       instance_create(gx+9*32,gy+7*32,obj_rock);

       instance_create(gx+5*32,gy+6*32,obj_slm_b);
        instance_create(gx+7*32,gy+6*32,obj_slm_b);
        instance_create(gx+9*32,gy+6*32,obj_slm_b);
        
    break;
 ///Type Store
    case 6:
        instance_create(gx+2*32,gy+4*32,obj_rock);
       instance_create(gx+12*32,gy+4*32,obj_rock);

       instance_create(gx+3*32,gy+5*32,obj_rock);
       instance_create(gx+4*32,gy+5*32,obj_rock);
        instance_create(gx+7*32,gy+5*32,obj_rock);
       instance_create(gx+10*32,gy+5*32,obj_rock);
       instance_create(gx+11*32,gy+5*32,obj_rock);

        instance_create(gx+6*32,gy+5*32,obj_vase);
       instance_create(gx+8*32,gy+5*32,obj_vase);

        instance_create(gx+5*32,gy+6*32,obj_rock);
       instance_create(gx+6*32,gy+6*32,obj_rock);
       instance_create(gx+7*32,gy+6*32,obj_rock);
       instance_create(gx+8*32,gy+6*32,obj_rock);
       instance_create(gx+9*32,gy+6*32,obj_rock);

        instance_create(gx+4*32,gy+6*32,obj_barrel);
       instance_create(gx+10*32,gy+6*32,obj_barrel);

        instance_create(gx+3*32,gy+7*32,obj_rock);
       instance_create(gx+4*32,gy+7*32,obj_rock);
       instance_create(gx+10*32,gy+7*32,obj_rock);
       instance_create(gx+11*32,gy+7*32,obj_rock);

        instance_create(gx+6*32,gy+7*32,obj_vase);
       instance_create(gx+8*32,gy+7*32,obj_vase);

        instance_create(gx+2*32,gy+8*32,obj_rock);
        instance_create(gx+12*32,gy+8*32,obj_rock);

    break;
    case 7:
        instance_create(gx+13*32,gy+3*32,obj_rock);
        instance_create(gx+13*32,gy+4*32,obj_rock);

        instance_create(gx+7*32,gy+5*32,obj_rock);
        instance_create(gx+13*32,gy+5*32,obj_rock);

        instance_create(gx+6*32,gy+6*32,obj_vase);
       instance_create(gx+7*32,gy+6*32,obj_barrel);
       instance_create(gx+8*32,gy+6*32,obj_vase);

        instance_create(gx+1*32,gy+7*32,obj_rock);
       instance_create(gx+7*32,gy+7*32,obj_rock);

        instance_create(gx+1*32,gy+8*32,obj_rock);
       instance_create(gx+1*32,gy+9*32,obj_rock);

   break;
    case 8:
    case 9:
    break;
///Type B
    case 10:
        instance_create(gx+(roomwd/2),gy+144+3*32,obj_ppoff);

       instance_create(gx+1*32,gy+3*32,obj_vase);
        instance_create(gx+13*32,gy+3*32,obj_vase);

       instance_create(gx+1*32,gy+9*32,obj_vase);
        instance_create(gx+13*32,gy+9*32,obj_vase);

       instance_create(gx+6*32,gy+5*32,obj_rock);
        instance_create(gx+8*32,gy+5*32,obj_rock);

        instance_create(gx+6*32,gy+7*32,obj_rock);
       instance_create(gx+8*32,gy+7*32,obj_rock);

       instance_create(gx+7*32,gy+5*32,obj_slm_a);

        instance_create(gx+6*32,gy+6*32,obj_slm_a);
        instance_create(gx+8*32,gy+6*32,obj_slm_a);

       instance_create(gx+7*32,gy+7*32,obj_slm_a);

        instance_create(gx+7*32,gy+6*32,obj_slm_b);
        
    break;
    case 11:
        instance_create(gx+(roomwd/2),gy+144+3*32,obj_ppoff);

        instance_create(gx+7*32,gy+4*32,obj_vase);
        instance_create(gx+7*32,gy+8*32,obj_vase);

       instance_create(gx+4*32,gy+4*32,obj_rock);
        instance_create(gx+10*32,gy+4*32,obj_rock);

        instance_create(gx+2*32,gy+5*32,obj_rock);
       instance_create(gx+4*32,gy+5*32,obj_rock);
       instance_create(gx+7*32,gy+5*32,obj_rock);
       instance_create(gx+10*32,gy+5*32,obj_rock);

       instance_create(gx+2*32,gy+6*32,obj_rock);
        instance_create(gx+12*32,gy+6*32,obj_rock);

        instance_create(gx+4*32,gy+7*32,obj_rock);
       instance_create(gx+7*32,gy+7*32,obj_rock);
       instance_create(gx+10*32,gy+7*32,obj_rock);
       instance_create(gx+12*32,gy+7*32,obj_rock);

       instance_create(gx+4*32,gy+8*32,obj_rock);
        instance_create(gx+10*32,gy+8*32,obj_rock);

       instance_create(gx+13*32,gy+3*32,obj_slm_a);
       instance_create(gx+1*32,gy+9*32,obj_slm_a);

       instance_create(gx+1*32,gy+3*32,obj_slm_b);
       instance_create(gx+7*32,gy+6*32,obj_slm_b);
       instance_create(gx+13*32,gy+9*32,obj_slm_b);
        
    break;
    case 12:
        instance_create(gx+(roomwd/2),gy+144+3*32,obj_ppoff);

       instance_create(gx+1*32,gy+3*32,obj_rock);
        instance_create(gx+13*32,gy+3*32,obj_rock);

        instance_create(gx+2*32,gy+4*32,obj_rock);
       instance_create(gx+7*32,gy+4*32,obj_rock);
       instance_create(gx+12*32,gy+4*32,obj_rock);

       instance_create(gx+3*32,gy+5*32,obj_rock);
        instance_create(gx+11*32,gy+5*32,obj_rock);

        instance_create(gx+7*32,gy+6*32,obj_rock);

       instance_create(gx+3*32,gy+7*32,obj_rock);
        instance_create(gx+11*32,gy+7*32,obj_rock);

       instance_create(gx+2*32,gy+8*32,obj_rock);
       instance_create(gx+7*32,gy+8*32,obj_rock);
       instance_create(gx+12*32,gy+8*32,obj_rock);

       instance_create(gx+1*32,gy+9*32,obj_rock);
        instance_create(gx+13*32,gy+9*32,obj_rock);

       instance_create(gx+2*32,gy+3*32,obj_slm_a);
       instance_create(gx+12*32,gy+3*32,obj_slm_a);

       instance_create(gx+2*32,gy+9*32,obj_slm_a);
        instance_create(gx+12*32,gy+9*32,obj_slm_a);

       instance_create(gx+7*32,gy+5*32,obj_slm_b);
       instance_create(gx+7*32,gy+7*32,obj_slm_b);

    break;
    case 13:
        instance_create(gx+(roomwd/2),gy+144+3*32,obj_ppoff);

       instance_create(gx+10*32,gy+3*32,obj_rock);
        instance_create(gx+12*32,gy+3*32,obj_rock);

        instance_create(gx+10*32,gy+4*32,obj_rock);
       instance_create(gx+12*32,gy+4*32,obj_rock);

       instance_create(gx+2*32,gy+5*32,obj_rock);
       instance_create(gx+4*32,gy+5*32,obj_rock);
        instance_create(gx+10*32,gy+5*32,obj_rock);
       instance_create(gx+12*32,gy+5*32,obj_rock);

        instance_create(gx+2*32,gy+6*32,obj_rock);
       instance_create(gx+4*32,gy+6*32,obj_rock);
        instance_create(gx+10*32,gy+6*32,obj_rock);
       instance_create(gx+12*32,gy+6*32,obj_rock);

       instance_create(gx+2*32,gy+7*32,obj_rock);
       instance_create(gx+4*32,gy+7*32,obj_rock);
        instance_create(gx+10*32,gy+7*32,obj_rock);
       instance_create(gx+12*32,gy+7*32,obj_rock);

       instance_create(gx+2*32,gy+8*32,obj_rock);
        instance_create(gx+4*32,gy+8*32,obj_rock);

       instance_create(gx+2*32,gy+9*32,obj_rock);
       instance_create(gx+4*32,gy+9*32,obj_rock);

       instance_create(gx+1*32,gy+3*32,obj_slm_a);
       instance_create(gx+7*32,gy+3*32,obj_slm_a);

       instance_create(gx+3*32,gy+5*32,obj_vase);
       instance_create(gx+11*32,gy+7*32,obj_vase);

       instance_create(gx+3*32,gy+9*32,obj_slm_b);
        instance_create(gx+11*32,gy+3*32,obj_slm_b);

    break;
    case 14:
        instance_create(gx+(roomwd/2),gy+144+3*32,obj_ppoff);

       instance_create(gx+11*32,gy+3*32,obj_rock);

       instance_create(gx+13*32,gy+5*32,obj_rock);

       instance_create(gx+1*32,gy+7*32,obj_rock);

       instance_create(gx+3*32,gy+9*32,obj_rock);

       instance_create(gx+3*32,gy+9*32,obj_rock);

       instance_create(gx+12*32,gy+3*32,obj_slm_b);
       instance_create(gx+2*32,gy+9*32,obj_slm_b);

       instance_create(gx+13*32,gy+3*32,obj_barrel);
       instance_create(gx+1*32,gy+9*32,obj_barrel);

       instance_create(gx+1*32,gy+3*32,obj_slm_a);
       instance_create(gx+13*32,gy+6*32,obj_slm_a);
        instance_create(gx+13*32,gy+9*32,obj_slm_a);

    break;
    case 15:
        ///C6
       instance_create(gx+(roomwd/2),gy+144+3*32,obj_ppoff);

       instance_create(gx+7*32,gy+5*32,obj_rock);

       instance_create(gx+6*32,gy+6*32,obj_rock);
       instance_create(gx+7*32,gy+6*32,obj_rock);
       instance_create(gx+8*32,gy+6*32,obj_rock);

       instance_create(gx+7*32,gy+7*32,obj_rock);

       instance_create(gx+12*32,gy+3*32,obj_slm_b);
       instance_create(gx+2*32,gy+9*32,obj_slm_b);

       instance_create(gx+1*32,gy+3*32,obj_vase);
       instance_create(gx+3*32,gy+3*32,obj_vase);
       instance_create(gx+11*32,gy+3*32,obj_vase);
       instance_create(gx+13*32,gy+3*32,obj_vase);

       instance_create(gx+1*32,gy+9*32,obj_vase);
        instance_create(gx+3*32,gy+9*32,obj_vase);
       instance_create(gx+11*32,gy+9*32,obj_vase);
       instance_create(gx+13*32,gy+9*32,obj_vase);

       instance_create(gx+2*32,gy+3*32,obj_slm_b);
       instance_create(gx+12*32,gy+3*32,obj_slm_b);
       instance_create(gx+2*32,gy+9*32,obj_slm_b);
       instance_create(gx+12*32,gy+9*32,obj_slm_b);

       instance_create(gx+3*32,gy+6*32,obj_slm_a);
       instance_create(gx+11*32,gy+6*32,obj_slm_a);

    break;
///Type SP
    case 16:
        instance_create(gx+(roomwd/2),gy+16+(roomhg/2),obj_equipable);
        instance_create(gx+(roomwd/2),gy+32+(roomhg/2),obj_pedestal);
    break;
    case 17:
    case 18:
    case 19:
    case 20:
    break;
///Boss
    case 50:
    instance_create(gx+(roomwd/2),gy+32+(roomhg/2),obj_bdoor);
    break;
 } 
}
