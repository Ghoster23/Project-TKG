{
roomhg = global.roomhg
roomwd = global.roomwd

 switch(typeroom){
 ///Type A
    case 0:
       instance_create(gx+192,gy+128,obj_rock);
       instance_create(gx+224,gy+128,obj_rock);
       instance_create(gx+256,gy+128,obj_rock);
       instance_create(gx+288,gy+128,obj_rock);
       instance_create(gx+320,gy+128,obj_rock);
       instance_create(gx+128,gy+160,obj_skull);
       instance_create(gx+384,gy+160,obj_skull);
       instance_create(gx+64,gy+192,obj_rock);
       instance_create(gx+192,gy+192,obj_rock);
       instance_create(gx+320,gy+192,obj_rock);
       instance_create(gx+448,gy+192,obj_rock);
       instance_create(gx+64,gy+224,obj_rock);
       instance_create(gx+160,gy+224,obj_rock);
       instance_create(gx+256,gy+224,obj_skull);
       instance_create(gx+352,gy+224,obj_rock);
       instance_create(gx+448,gy+224,obj_rock);
       instance_create(gx+64,gy+256,obj_rock);
       instance_create(gx+192,gy+256,obj_rock);
       instance_create(gx+320,gy+256,obj_rock);
       instance_create(gx+448,gy+256,obj_rock);
       instance_create(gx+128,gy+288,obj_skull);
       instance_create(gx+384,gy+288,obj_skull);
       instance_create(gx+192,gy+320,obj_rock);
       instance_create(gx+224,gy+320,obj_rock);
       instance_create(gx+256,gy+320,obj_rock);
       instance_create(gx+288,gy+320,obj_rock);
       instance_create(gx+320,gy+320,obj_rock);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);
        
    break;
    case 1:
       instance_create(gx+32,gy+96,obj_barrel);
       instance_create(gx+64,gy+96,obj_barrel);
       instance_create(gx+448,gy+96,obj_barrel);
       instance_create(gx+480,gy+96,obj_barrel);
       instance_create(gx+32,gy+128,obj_barrel);
       instance_create(gx+64,gy+128,obj_barrel);
       instance_create(gx+128,gy+128,obj_psnt_body);
       instance_create(gx+384,gy+128,obj_psnt_body);
       instance_create(gx+448,gy+128,obj_barrel);
       instance_create(gx+480,gy+128,obj_barrel);
       instance_create(gx+32,gy+160,obj_barrel);
       instance_create(gx+64,gy+160,obj_barrel);
       instance_create(gx+448,gy+160,obj_barrel);
       instance_create(gx+480,gy+160,obj_barrel);
       instance_create(gx+224,gy+192,obj_barrel);
       instance_create(gx+256,gy+192,obj_barrel);
       instance_create(gx+288,gy+192,obj_barrel);
       instance_create(gx+224,gy+224,obj_barrel);
       instance_create(gx+256,gy+224,obj_barrel);
       instance_create(gx+288,gy+224,obj_barrel);
       instance_create(gx+224,gy+256,obj_barrel);
       instance_create(gx+256,gy+256,obj_barrel);
       instance_create(gx+288,gy+256,obj_barrel);
       instance_create(gx+32,gy+288,obj_barrel);
       instance_create(gx+64,gy+288,obj_barrel);
       instance_create(gx+448,gy+288,obj_barrel);
       instance_create(gx+480,gy+288,obj_barrel);
       instance_create(gx+32,gy+320,obj_barrel);
       instance_create(gx+64,gy+320,obj_barrel);
       instance_create(gx+128,gy+320,obj_psnt_body);
       instance_create(gx+384,gy+320,obj_psnt_body);
       instance_create(gx+448,gy+320,obj_barrel);
       instance_create(gx+480,gy+320,obj_barrel);
       instance_create(gx+32,gy+352,obj_barrel);
       instance_create(gx+64,gy+352,obj_barrel);
       instance_create(gx+448,gy+352,obj_barrel);
       instance_create(gx+480,gy+352,obj_barrel);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);
        
    break;
    case 2:
       instance_create(gx+96,gy+128,obj_slm_cr);
       instance_create(gx+416,gy+128,obj_slm_cr);
       instance_create(gx+256,gy+160,obj_vase);
       instance_create(gx+224,gy+192,obj_vase);
       instance_create(gx+288,gy+192,obj_vase);
       instance_create(gx+192,gy+224,obj_vase);
       instance_create(gx+256,gy+224,obj_fheart);
       instance_create(gx+320,gy+224,obj_vase);
       instance_create(gx+224,gy+256,obj_vase);
       instance_create(gx+288,gy+256,obj_vase);
       instance_create(gx+256,gy+288,obj_vase);
       instance_create(gx+96,gy+320,obj_slm_cr);
       instance_create(gx+416,gy+320,obj_slm_cr);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);
        
    break;
    case 3:
       instance_create(gx+448,gy+96,obj_barrel);
       instance_create(gx+480,gy+96,obj_crate);
       instance_create(gx+96,gy+128,obj_crate);
       instance_create(gx+128,gy+128,obj_barrel);
       instance_create(gx+160,gy+128,obj_bat);
       instance_create(gx+288,gy+128,obj_crate);
       instance_create(gx+320,gy+128,obj_barrel);
       instance_create(gx+352,gy+128,obj_crate);
       instance_create(gx+448,gy+128,obj_crate);
       instance_create(gx+480,gy+128,obj_crate);
       instance_create(gx+96,gy+160,obj_crate);
       instance_create(gx+128,gy+160,obj_crate);
       instance_create(gx+288,gy+160,obj_mimic);
       instance_create(gx+320,gy+160,obj_crate);
       instance_create(gx+128,gy+192,obj_crate);
       instance_create(gx+416,gy+192,obj_bat);
       instance_create(gx+192,gy+256,obj_crate);
       instance_create(gx+224,gy+256,obj_crate);
       instance_create(gx+384,gy+256,obj_crate);
       instance_create(gx+32,gy+288,obj_mimic);
       instance_create(gx+192,gy+288,obj_crate);
       instance_create(gx+224,gy+288,obj_barrel);
       instance_create(gx+352,gy+288,obj_barrel);
       instance_create(gx+384,gy+288,obj_crate);
       instance_create(gx+32,gy+320,obj_crate);
       instance_create(gx+64,gy+320,obj_crate);
       instance_create(gx+96,gy+320,obj_bat);
       instance_create(gx+352,gy+320,obj_barrel);
       instance_create(gx+384,gy+320,obj_crate);
       instance_create(gx+32,gy+352,obj_barrel);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);
        
    break;
    case 4:
       instance_create(gx+32,gy+96,obj_rock);
       instance_create(gx+64,gy+96,obj_rock);
       instance_create(gx+96,gy+96,obj_rock);
       instance_create(gx+320,gy+96,obj_rock);
       instance_create(gx+352,gy+96,obj_rock);
       instance_create(gx+384,gy+96,obj_rock);
       instance_create(gx+32,gy+128,obj_rock);
       instance_create(gx+64,gy+128,obj_rock);
       instance_create(gx+96,gy+128,obj_rock);
       instance_create(gx+128,gy+128,obj_rock);
       instance_create(gx+192,gy+128,obj_bat);
       instance_create(gx+352,gy+128,obj_rock);
       instance_create(gx+384,gy+128,obj_rock);
       instance_create(gx+416,gy+128,obj_rock);
       instance_create(gx+480,gy+128,obj_bat);
       instance_create(gx+64,gy+160,obj_rock);
       instance_create(gx+96,gy+160,obj_rock);
       instance_create(gx+128,gy+160,obj_rock);
       instance_create(gx+352,gy+160,obj_rock);
       instance_create(gx+384,gy+160,obj_rock);
       instance_create(gx+320,gy+192,obj_rock);
       instance_create(gx+352,gy+192,obj_rock);
       instance_create(gx+160,gy+256,obj_rock);
       instance_create(gx+192,gy+256,obj_rock);
       instance_create(gx+224,gy+256,obj_rock);
       instance_create(gx+384,gy+256,obj_bat);
       instance_create(gx+32,gy+288,obj_rock);
       instance_create(gx+64,gy+288,obj_rock);
       instance_create(gx+160,gy+288,obj_rock);
       instance_create(gx+352,gy+288,obj_rock);
       instance_create(gx+416,gy+288,obj_rock);
       instance_create(gx+32,gy+320,obj_rock);
       instance_create(gx+64,gy+320,obj_rock);
       instance_create(gx+96,gy+320,obj_rock);
       instance_create(gx+352,gy+320,obj_rock);
       instance_create(gx+384,gy+320,obj_rock);
       instance_create(gx+416,gy+320,obj_rock);
       instance_create(gx+448,gy+320,obj_rock);
       instance_create(gx+32,gy+352,obj_rock);
       instance_create(gx+64,gy+352,obj_rock);
       instance_create(gx+96,gy+352,obj_rock);
       instance_create(gx+128,gy+352,obj_rock);
       instance_create(gx+192,gy+352,obj_bat);
       instance_create(gx+352,gy+352,obj_rock);
       instance_create(gx+384,gy+352,obj_rock);
       instance_create(gx+416,gy+352,obj_rock);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);
        
   break;
    case 5:
       instance_create(gx+32,gy+96,obj_barrel);
       instance_create(gx+64,gy+96,obj_barrel);
       instance_create(gx+96,gy+96,obj_barrel);
       instance_create(gx+416,gy+96,obj_barrel);
       instance_create(gx+448,gy+96,obj_barrel);
       instance_create(gx+480,gy+96,obj_barrel);
       instance_create(gx+32,gy+128,obj_barrel);
       instance_create(gx+64,gy+128,obj_vase);
       instance_create(gx+128,gy+128,obj_psnt_body);
       instance_create(gx+384,gy+128,obj_psnt_body);
       instance_create(gx+448,gy+128,obj_vase);
       instance_create(gx+480,gy+128,obj_barrel);
       instance_create(gx+32,gy+160,obj_barrel);
       instance_create(gx+480,gy+160,obj_barrel);
       instance_create(gx+160,gy+192,obj_crate);
       instance_create(gx+192,gy+192,obj_crate);
       instance_create(gx+320,gy+192,obj_crate);
       instance_create(gx+352,gy+192,obj_crate);
       instance_create(gx+160,gy+224,obj_crate);
       instance_create(gx+192,gy+224,obj_crate);
       instance_create(gx+320,gy+224,obj_crate);
       instance_create(gx+352,gy+224,obj_crate);
       instance_create(gx+160,gy+256,obj_crate);
       instance_create(gx+192,gy+256,obj_crate);
       instance_create(gx+320,gy+256,obj_crate);
       instance_create(gx+352,gy+256,obj_crate);
       instance_create(gx+32,gy+288,obj_barrel);
       instance_create(gx+480,gy+288,obj_barrel);
       instance_create(gx+32,gy+320,obj_barrel);
       instance_create(gx+64,gy+320,obj_vase);
       instance_create(gx+128,gy+320,obj_psnt_body);
       instance_create(gx+384,gy+320,obj_psnt_body);
       instance_create(gx+448,gy+320,obj_vase);
       instance_create(gx+480,gy+320,obj_barrel);
       instance_create(gx+32,gy+352,obj_barrel);
       instance_create(gx+64,gy+352,obj_barrel);
       instance_create(gx+96,gy+352,obj_barrel);
       instance_create(gx+416,gy+352,obj_barrel);
       instance_create(gx+448,gy+352,obj_barrel);
       instance_create(gx+480,gy+352,obj_barrel);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);
        
    break;
 ///Type Store
    case 6:
       instance_create(gx+32,gy+96,obj_barrel);
       instance_create(gx+64,gy+96,obj_barrel);
       instance_create(gx+448,gy+96,obj_barrel);
       instance_create(gx+480,gy+96,obj_barrel);
       instance_create(gx+32,gy+128,obj_barrel);
       instance_create(gx+224,gy+128,obj_vase);
       instance_create(gx+288,gy+128,obj_vase);
       instance_create(gx+480,gy+128,obj_barrel);
       instance_create(gx+192,gy+160,obj_vase);
       instance_create(gx+256,gy+160,obj_vase);
       instance_create(gx+320,gy+160,obj_vase);
       instance_create(gx+160,gy+192,obj_vase);
       instance_create(gx+352,gy+192,obj_vase);
       instance_create(gx+192,gy+224,obj_vase);
       instance_create(gx+256,gy+224,obj_fheart);
       instance_create(gx+320,gy+224,obj_vase);
       instance_create(gx+224,gy+256,obj_vase);
       instance_create(gx+288,gy+256,obj_vase);
       instance_create(gx+256,gy+288,obj_vase);
       instance_create(gx+32,gy+320,obj_barrel);
       instance_create(gx+480,gy+320,obj_barrel);
       instance_create(gx+32,gy+352,obj_barrel);
       instance_create(gx+64,gy+352,obj_barrel);
       instance_create(gx+448,gy+352,obj_barrel);
       instance_create(gx+480,gy+352,obj_barrel);

    break;
    case 7:
       instance_create(gx+384,gy+96,obj_crate);
       instance_create(gx+416,gy+96,obj_barrel);
       instance_create(gx+448,gy+96,obj_crate);
       instance_create(gx+96,gy+128,obj_barrel);
       instance_create(gx+128,gy+128,obj_crate);
       instance_create(gx+160,gy+128,obj_vase);
       instance_create(gx+384,gy+128,obj_vase);
       instance_create(gx+416,gy+128,obj_mimic);
       instance_create(gx+448,gy+128,obj_crate);
       instance_create(gx+96,gy+160,obj_mimic);
       instance_create(gx+160,gy+160,obj_crate);
       instance_create(gx+256,gy+192,obj_crate);
       instance_create(gx+288,gy+192,obj_barrel);
       instance_create(gx+224,gy+224,obj_chest);
       instance_create(gx+256,gy+224,obj_crate);
       instance_create(gx+288,gy+224,obj_crate);
       instance_create(gx+32,gy+288,obj_barrel);
       instance_create(gx+64,gy+288,obj_vase);
       instance_create(gx+448,gy+288,obj_barrel);
       instance_create(gx+32,gy+320,obj_crate);
       instance_create(gx+64,gy+320,obj_crate);
       instance_create(gx+96,gy+320,obj_barrel);
       instance_create(gx+416,gy+320,obj_crate);
       instance_create(gx+448,gy+320,obj_crate);
       instance_create(gx+416,gy+352,obj_vase);
       instance_create(gx+448,gy+352,obj_crate);

    break;
    case 8:
       instance_create(gx+256,gy+160,obj_vase);
       instance_create(gx+128,gy+224,obj_vase);
       instance_create(gx+192,gy+224,obj_chest);
       instance_create(gx+320,gy+224,obj_mimic);
       instance_create(gx+384,gy+224,obj_vase);
       instance_create(gx+256,gy+288,obj_vase);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);
       
    break;
    case 9:
       instance_create(gx+256,gy+160,obj_vase);
       instance_create(gx+128,gy+224,obj_vase);
       instance_create(gx+192,gy+224,obj_mimic);
       instance_create(gx+320,gy+224,obj_chest);
       instance_create(gx+384,gy+224,obj_vase);
       instance_create(gx+256,gy+288,obj_vase);
       
    break;
///Type B
    case 10:
       instance_create(gx+32,gy+96,obj_rock);
       instance_create(gx+64,gy+96,obj_rock);
       instance_create(gx+448,gy+96,obj_rock);
       instance_create(gx+480,gy+96,obj_rock);
       instance_create(gx+32,gy+128,obj_rock);
       instance_create(gx+96,gy+128,obj_slm_cr);
       instance_create(gx+416,gy+128,obj_slm_cr);
       instance_create(gx+480,gy+128,obj_rock);
       instance_create(gx+32,gy+160,obj_rock);
       instance_create(gx+480,gy+160,obj_rock);
       instance_create(gx+256,gy+224,obj_slm_cr);
       instance_create(gx+32,gy+288,obj_rock);
       instance_create(gx+480,gy+288,obj_rock);
       instance_create(gx+32,gy+320,obj_rock);
       instance_create(gx+96,gy+320,obj_slm_cr);
       instance_create(gx+416,gy+320,obj_slm_cr);
       instance_create(gx+480,gy+320,obj_rock);
       instance_create(gx+32,gy+352,obj_rock);
       instance_create(gx+64,gy+352,obj_rock);
       instance_create(gx+448,gy+352,obj_rock);
       instance_create(gx+480,gy+352,obj_rock);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);
        
    break;
    case 11:
       instance_create(gx+32,gy+96,obj_rock);
       instance_create(gx+480,gy+96,obj_rock);
       instance_create(gx+64,gy+128,obj_rock);
       instance_create(gx+128,gy+128,obj_rock);
       instance_create(gx+192,gy+128,obj_slm_cr);
       instance_create(gx+384,gy+128,obj_rock);
       instance_create(gx+448,gy+128,obj_rock);
       instance_create(gx+96,gy+160,obj_rock);
       instance_create(gx+416,gy+160,obj_rock);
       instance_create(gx+224,gy+192,obj_rock);
       instance_create(gx+288,gy+192,obj_rock);
       instance_create(gx+192,gy+224,obj_rock);
       instance_create(gx+256,gy+224,obj_bat);
       instance_create(gx+320,gy+224,obj_rock);
       instance_create(gx+384,gy+224,obj_slm_cr);
       instance_create(gx+224,gy+256,obj_rock);
       instance_create(gx+288,gy+256,obj_rock);
       instance_create(gx+96,gy+288,obj_rock);
       instance_create(gx+160,gy+288,obj_slm_cr);
       instance_create(gx+416,gy+288,obj_rock);
       instance_create(gx+64,gy+320,obj_rock);
       instance_create(gx+128,gy+320,obj_rock);
       instance_create(gx+384,gy+320,obj_rock);
       instance_create(gx+448,gy+320,obj_rock);
       instance_create(gx+32,gy+352,obj_rock);
       instance_create(gx+480,gy+352,obj_rock);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);
        
    break;
    case 12:
       instance_create(gx+32,gy+96,obj_vase);
       instance_create(gx+480,gy+96,obj_vase);
       instance_create(gx+32,gy+128,obj_barrel);
       instance_create(gx+96,gy+128,obj_psnt_arch_body);
       instance_create(gx+224,gy+128,obj_barrel);
       instance_create(gx+288,gy+128,obj_barrel);
       instance_create(gx+416,gy+128,obj_psnt_body);
       instance_create(gx+480,gy+128,obj_barrel);
       instance_create(gx+128,gy+160,obj_barrel);
       instance_create(gx+160,gy+160,obj_barrel);
       instance_create(gx+256,gy+160,obj_barrel);
       instance_create(gx+352,gy+160,obj_barrel);
       instance_create(gx+384,gy+160,obj_barrel);
       instance_create(gx+160,gy+192,obj_barrel);
       instance_create(gx+352,gy+192,obj_barrel);
       instance_create(gx+160,gy+256,obj_barrel);
       instance_create(gx+352,gy+256,obj_barrel);
       instance_create(gx+128,gy+288,obj_barrel);
       instance_create(gx+160,gy+288,obj_barrel);
       instance_create(gx+256,gy+288,obj_barrel);
       instance_create(gx+352,gy+288,obj_barrel);
       instance_create(gx+384,gy+288,obj_barrel);
       instance_create(gx+32,gy+320,obj_barrel);
       instance_create(gx+96,gy+320,obj_psnt_body);
       instance_create(gx+224,gy+320,obj_barrel);
       instance_create(gx+288,gy+320,obj_barrel);
       instance_create(gx+416,gy+320,obj_psnt_arch_body);
       instance_create(gx+480,gy+320,obj_barrel);
       instance_create(gx+32,gy+352,obj_vase);
       instance_create(gx+480,gy+352,obj_vase);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);

    break;
    case 13:
       instance_create(gx+96,gy+128,obj_rock);
       instance_create(gx+128,gy+128,obj_skull);
       instance_create(gx+96,gy+160,obj_rock);
       instance_create(gx+192,gy+160,obj_rock);
       instance_create(gx+224,gy+160,obj_rock);
       instance_create(gx+256,gy+160,obj_rock);
       instance_create(gx+288,gy+160,obj_rock);
       instance_create(gx+320,gy+160,obj_rock);
       instance_create(gx+352,gy+160,obj_rock);
       instance_create(gx+416,gy+160,obj_rock);
       instance_create(gx+96,gy+192,obj_rock);
       instance_create(gx+416,gy+192,obj_rock);
       instance_create(gx+96,gy+224,obj_rock);
       instance_create(gx+160,gy+224,obj_rock);
       instance_create(gx+256,gy+224,obj_skull);
       instance_create(gx+352,gy+224,obj_rock);
       instance_create(gx+416,gy+224,obj_rock);
       instance_create(gx+96,gy+256,obj_rock);
       instance_create(gx+416,gy+256,obj_rock);
       instance_create(gx+96,gy+288,obj_rock);
       instance_create(gx+160,gy+288,obj_rock);
       instance_create(gx+192,gy+288,obj_rock);
       instance_create(gx+224,gy+288,obj_rock);
       instance_create(gx+256,gy+288,obj_rock);
       instance_create(gx+288,gy+288,obj_rock);
       instance_create(gx+320,gy+288,obj_rock);
       instance_create(gx+416,gy+288,obj_rock);
       instance_create(gx+384,gy+320,obj_skull);
       instance_create(gx+416,gy+320,obj_rock);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);

    break;
    case 14:
       instance_create(gx+160,gy+96,obj_rock);
       instance_create(gx+192,gy+96,obj_rock);
       instance_create(gx+320,gy+96,obj_rock);
       instance_create(gx+352,gy+96,obj_rock);
       instance_create(gx+32,gy+128,obj_rock);
       instance_create(gx+96,gy+128,obj_psnt_arch_body);
       instance_create(gx+192,gy+128,obj_rock);
       instance_create(gx+320,gy+128,obj_rock);
       instance_create(gx+384,gy+128,obj_skull);
       instance_create(gx+480,gy+128,obj_rock);
       instance_create(gx+32,gy+160,obj_rock);
       instance_create(gx+64,gy+160,obj_rock);
       instance_create(gx+192,gy+160,obj_rock);
       instance_create(gx+320,gy+160,obj_rock);
       instance_create(gx+448,gy+160,obj_rock);
       instance_create(gx+480,gy+160,obj_rock);
       instance_create(gx+32,gy+288,obj_rock);
       instance_create(gx+64,gy+288,obj_rock);
       instance_create(gx+192,gy+288,obj_rock);
       instance_create(gx+320,gy+288,obj_rock);
       instance_create(gx+448,gy+288,obj_rock);
       instance_create(gx+480,gy+288,obj_rock);
       instance_create(gx+32,gy+320,obj_rock);
       instance_create(gx+96,gy+320,obj_skull);
       instance_create(gx+192,gy+320,obj_rock);
       instance_create(gx+320,gy+320,obj_rock);
       instance_create(gx+416,gy+320,obj_psnt_arch_body);
       instance_create(gx+480,gy+320,obj_rock);
       instance_create(gx+160,gy+352,obj_rock);
       instance_create(gx+192,gy+352,obj_rock);
       instance_create(gx+320,gy+352,obj_rock);
       instance_create(gx+352,gy+352,obj_rock);
       instance_create(gx+(roomwd/2),gy+240,obj_ppoff);

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
