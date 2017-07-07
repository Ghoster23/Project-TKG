{
roomhg = global.roomhg;
roomwd = global.roomwd;

typeroom = argument0;

 switch(typeroom){
 ///Type A
    case 0:
       instance_create_layer(gx+192,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+224,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+256,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+288,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+128,gy+160,"Instances",obj_skull);
       instance_create_layer(gx+64,gy+192,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+192,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+192,"Instances",obj_rock);
       instance_create_layer(gx+448,gy+192,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+224,"Instances",obj_rock);
       instance_create_layer(gx+160,gy+224,"Instances",obj_rock);
       instance_create_layer(gx+352,gy+224,"Instances",obj_rock);
       instance_create_layer(gx+448,gy+224,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+256,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+256,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+256,"Instances",obj_rock);
       instance_create_layer(gx+448,gy+256,"Instances",obj_rock);
       instance_create_layer(gx+384,gy+288,"Instances",obj_skull);
       instance_create_layer(gx+192,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+224,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+256,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+288,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
        
		return "A";
    break;
    case 1:
       instance_create_layer(gx+32,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+448,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+128,gy+128,"Instances",obj_psnt_body);
       instance_create_layer(gx+384,gy+128,"Instances",obj_psnt_body);
       instance_create_layer(gx+448,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+160,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+160,"Instances",obj_barrel);
       instance_create_layer(gx+448,gy+160,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+160,"Instances",obj_barrel);
       instance_create_layer(gx+224,gy+192,"Instances",obj_barrel);
       instance_create_layer(gx+256,gy+192,"Instances",obj_barrel);
       instance_create_layer(gx+288,gy+192,"Instances",obj_barrel);
       instance_create_layer(gx+224,gy+224,"Instances",obj_barrel);
       instance_create_layer(gx+256,gy+224,"Instances",obj_barrel);
       instance_create_layer(gx+288,gy+224,"Instances",obj_barrel);
       instance_create_layer(gx+224,gy+256,"Instances",obj_barrel);
       instance_create_layer(gx+256,gy+256,"Instances",obj_barrel);
       instance_create_layer(gx+288,gy+256,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+448,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+128,gy+320,"Instances",obj_psnt_body);
       instance_create_layer(gx+384,gy+320,"Instances",obj_psnt_body);
       instance_create_layer(gx+448,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+448,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
        
		return "A";
    break;
    case 2:
       instance_create_layer(gx+96,gy+128,"Instances",obj_slm_cr);
       instance_create_layer(gx+416,gy+128,"Instances",obj_slm_cr);
       instance_create_layer(gx+256,gy+160,"Instances",obj_vase);
       instance_create_layer(gx+224,gy+192,"Instances",obj_vase);
       instance_create_layer(gx+288,gy+192,"Instances",obj_vase);
       instance_create_layer(gx+192,gy+224,"Instances",obj_vase);
       instance_create_layer(gx+256,gy+224,"Instances",obj_fheart);
       instance_create_layer(gx+320,gy+224,"Instances",obj_vase);
       instance_create_layer(gx+224,gy+256,"Instances",obj_vase);
       instance_create_layer(gx+288,gy+256,"Instances",obj_vase);
       instance_create_layer(gx+256,gy+288,"Instances",obj_vase);
       instance_create_layer(gx+96,gy+320,"Instances",obj_slm_cr);
       instance_create_layer(gx+416,gy+320,"Instances",obj_slm_cr);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
        
		return "A";
    break;
    case 3:
       instance_create_layer(gx+448,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+96,"Instances",obj_crate);
       instance_create_layer(gx+96,gy+128,"Instances",obj_crate);
       instance_create_layer(gx+128,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+160,gy+128,"Instances",obj_bat);
       instance_create_layer(gx+288,gy+128,"Instances",obj_crate);
       instance_create_layer(gx+320,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+352,gy+128,"Instances",obj_crate);
       instance_create_layer(gx+448,gy+128,"Instances",obj_crate);
       instance_create_layer(gx+480,gy+128,"Instances",obj_crate);
       instance_create_layer(gx+96,gy+160,"Instances",obj_crate);
       instance_create_layer(gx+128,gy+160,"Instances",obj_crate);
       instance_create_layer(gx+288,gy+160,"Instances",obj_mimic);
       instance_create_layer(gx+320,gy+160,"Instances",obj_crate);
       instance_create_layer(gx+128,gy+192,"Instances",obj_crate);
       instance_create_layer(gx+416,gy+192,"Instances",obj_bat);
       instance_create_layer(gx+192,gy+256,"Instances",obj_crate);
       instance_create_layer(gx+224,gy+256,"Instances",obj_crate);
       instance_create_layer(gx+384,gy+256,"Instances",obj_crate);
       instance_create_layer(gx+32,gy+288,"Instances",obj_mimic);
       instance_create_layer(gx+192,gy+288,"Instances",obj_crate);
       instance_create_layer(gx+224,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+352,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+384,gy+288,"Instances",obj_crate);
       instance_create_layer(gx+32,gy+320,"Instances",obj_crate);
       instance_create_layer(gx+64,gy+320,"Instances",obj_crate);
       instance_create_layer(gx+96,gy+320,"Instances",obj_bat);
       instance_create_layer(gx+352,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+384,gy+320,"Instances",obj_crate);
       instance_create_layer(gx+32,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
        
		return "A";
    break;
    case 4:
       instance_create_layer(gx+32,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+352,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+384,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+128,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+128,"Instances",obj_bat);
       instance_create_layer(gx+352,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+384,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+416,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+480,gy+128,"Instances",obj_bat);
       instance_create_layer(gx+64,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+128,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+352,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+384,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+192,"Instances",obj_rock);
       instance_create_layer(gx+352,gy+192,"Instances",obj_rock);
       instance_create_layer(gx+160,gy+256,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+256,"Instances",obj_rock);
       instance_create_layer(gx+224,gy+256,"Instances",obj_rock);
       instance_create_layer(gx+384,gy+256,"Instances",obj_bat);
       instance_create_layer(gx+32,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+160,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+352,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+416,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+352,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+384,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+416,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+448,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+128,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+352,"Instances",obj_bat);
       instance_create_layer(gx+352,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+384,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+416,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
        
		return "A";
   break;
    case 5:
       instance_create_layer(gx+32,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+96,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+416,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+448,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+128,"Instances",obj_vase);
       instance_create_layer(gx+128,gy+128,"Instances",obj_psnt_body);
       instance_create_layer(gx+384,gy+128,"Instances",obj_psnt_body);
       instance_create_layer(gx+448,gy+128,"Instances",obj_vase);
       instance_create_layer(gx+480,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+160,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+160,"Instances",obj_barrel);
       instance_create_layer(gx+160,gy+192,"Instances",obj_crate);
       instance_create_layer(gx+192,gy+192,"Instances",obj_crate);
       instance_create_layer(gx+320,gy+192,"Instances",obj_crate);
       instance_create_layer(gx+352,gy+192,"Instances",obj_crate);
       instance_create_layer(gx+160,gy+224,"Instances",obj_crate);
       instance_create_layer(gx+192,gy+224,"Instances",obj_crate);
       instance_create_layer(gx+320,gy+224,"Instances",obj_crate);
       instance_create_layer(gx+352,gy+224,"Instances",obj_crate);
       instance_create_layer(gx+160,gy+256,"Instances",obj_crate);
       instance_create_layer(gx+192,gy+256,"Instances",obj_crate);
       instance_create_layer(gx+320,gy+256,"Instances",obj_crate);
       instance_create_layer(gx+352,gy+256,"Instances",obj_crate);
       instance_create_layer(gx+32,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+320,"Instances",obj_vase);
       instance_create_layer(gx+128,gy+320,"Instances",obj_psnt_body);
       instance_create_layer(gx+384,gy+320,"Instances",obj_psnt_body);
       instance_create_layer(gx+448,gy+320,"Instances",obj_vase);
       instance_create_layer(gx+480,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+96,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+416,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+448,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
        
		return "A"
    break;
 ///Type Store
    case 6:
       instance_create_layer(gx+32,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+448,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+224,gy+128,"Instances",obj_vase);
       instance_create_layer(gx+288,gy+128,"Instances",obj_vase);
       instance_create_layer(gx+480,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+192,gy+160,"Instances",obj_vase);
       instance_create_layer(gx+256,gy+160,"Instances",obj_vase);
       instance_create_layer(gx+320,gy+160,"Instances",obj_vase);
       instance_create_layer(gx+160,gy+192,"Instances",obj_vase);
       instance_create_layer(gx+352,gy+192,"Instances",obj_vase);
       instance_create_layer(gx+192,gy+224,"Instances",obj_vase);
       instance_create_layer(gx+256,gy+224,"Instances",obj_fheart);
       instance_create_layer(gx+320,gy+224,"Instances",obj_vase);
       instance_create_layer(gx+224,gy+256,"Instances",obj_vase);
       instance_create_layer(gx+288,gy+256,"Instances",obj_vase);
       instance_create_layer(gx+256,gy+288,"Instances",obj_vase);
       instance_create_layer(gx+32,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+448,gy+352,"Instances",obj_barrel);
       instance_create_layer(gx+480,gy+352,"Instances",obj_barrel);
		
		return "ST";
    break;
    case 7:
       instance_create_layer(gx+384,gy+96,"Instances",obj_crate);
       instance_create_layer(gx+416,gy+96,"Instances",obj_barrel);
       instance_create_layer(gx+448,gy+96,"Instances",obj_crate);
       instance_create_layer(gx+96,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+128,gy+128,"Instances",obj_crate);
       instance_create_layer(gx+160,gy+128,"Instances",obj_vase);
       instance_create_layer(gx+384,gy+128,"Instances",obj_vase);
       instance_create_layer(gx+416,gy+128,"Instances",obj_mimic);
       instance_create_layer(gx+448,gy+128,"Instances",obj_crate);
       instance_create_layer(gx+96,gy+160,"Instances",obj_mimic);
       instance_create_layer(gx+160,gy+160,"Instances",obj_crate);
       instance_create_layer(gx+256,gy+192,"Instances",obj_crate);
       instance_create_layer(gx+288,gy+192,"Instances",obj_barrel);
       instance_create_layer(gx+224,gy+224,"Instances",obj_chest);
       instance_create_layer(gx+256,gy+224,"Instances",obj_crate);
       instance_create_layer(gx+288,gy+224,"Instances",obj_crate);
       instance_create_layer(gx+32,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+64,gy+288,"Instances",obj_vase);
       instance_create_layer(gx+448,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+320,"Instances",obj_crate);
       instance_create_layer(gx+64,gy+320,"Instances",obj_crate);
       instance_create_layer(gx+96,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+416,gy+320,"Instances",obj_crate);
       instance_create_layer(gx+448,gy+320,"Instances",obj_crate);
       instance_create_layer(gx+416,gy+352,"Instances",obj_vase);
       instance_create_layer(gx+448,gy+352,"Instances",obj_crate);
		
		return "ST";
    break;
    case 8:
       instance_create_layer(gx+256,gy+160,"Instances",obj_vase);
       instance_create_layer(gx+128,gy+224,"Instances",obj_vase);
       instance_create_layer(gx+192,gy+224,"Instances",obj_chest);
       instance_create_layer(gx+320,gy+224,"Instances",obj_mimic);
       instance_create_layer(gx+384,gy+224,"Instances",obj_vase);
       instance_create_layer(gx+256,gy+288,"Instances",obj_vase);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
       
	   return "ST";
    break;
    case 9:
       instance_create_layer(gx+256,gy+160,"Instances",obj_vase);
       instance_create_layer(gx+128,gy+224,"Instances",obj_vase);
       instance_create_layer(gx+192,gy+224,"Instances",obj_mimic);
       instance_create_layer(gx+320,gy+224,"Instances",obj_chest);
       instance_create_layer(gx+384,gy+224,"Instances",obj_vase);
       instance_create_layer(gx+256,gy+288,"Instances",obj_vase);
		
		return "ST";
    break;
///Type B
    case 10:
       instance_create_layer(gx+32,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+448,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+480,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+128,"Instances",obj_slm_cr);
       instance_create_layer(gx+416,gy+128,"Instances",obj_slm_cr);
       instance_create_layer(gx+480,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+480,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+256,gy+224,"Instances",obj_slm_cr);
       instance_create_layer(gx+32,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+480,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+320,"Instances",obj_slm_cr);
       instance_create_layer(gx+416,gy+320,"Instances",obj_slm_cr);
       instance_create_layer(gx+480,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+448,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+480,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
        
		return "B";
    break;
    case 11:
       instance_create_layer(gx+32,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+480,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+128,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+128,"Instances",obj_slm_cr);
       instance_create_layer(gx+384,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+448,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+416,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+224,gy+192,"Instances",obj_rock);
       instance_create_layer(gx+288,gy+192,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+224,"Instances",obj_rock);
       instance_create_layer(gx+256,gy+224,"Instances",obj_bat);
       instance_create_layer(gx+320,gy+224,"Instances",obj_rock);
       instance_create_layer(gx+384,gy+224,"Instances",obj_slm_cr);
       instance_create_layer(gx+224,gy+256,"Instances",obj_rock);
       instance_create_layer(gx+288,gy+256,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+160,gy+288,"Instances",obj_slm_cr);
       instance_create_layer(gx+416,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+128,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+384,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+448,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+480,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
        
		return "B";
    break;
    case 12:
       instance_create_layer(gx+32,gy+96,"Instances",obj_vase);
       instance_create_layer(gx+480,gy+96,"Instances",obj_vase);
       instance_create_layer(gx+32,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+96,gy+128,"Instances",obj_psnt_arch_body);
       instance_create_layer(gx+224,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+288,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+416,gy+128,"Instances",obj_psnt_body);
       instance_create_layer(gx+480,gy+128,"Instances",obj_barrel);
       instance_create_layer(gx+128,gy+160,"Instances",obj_barrel);
       instance_create_layer(gx+160,gy+160,"Instances",obj_barrel);
       instance_create_layer(gx+256,gy+160,"Instances",obj_barrel);
       instance_create_layer(gx+352,gy+160,"Instances",obj_barrel);
       instance_create_layer(gx+384,gy+160,"Instances",obj_barrel);
       instance_create_layer(gx+160,gy+192,"Instances",obj_barrel);
       instance_create_layer(gx+352,gy+192,"Instances",obj_barrel);
       instance_create_layer(gx+160,gy+256,"Instances",obj_barrel);
       instance_create_layer(gx+352,gy+256,"Instances",obj_barrel);
       instance_create_layer(gx+128,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+160,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+256,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+352,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+384,gy+288,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+96,gy+320,"Instances",obj_psnt_body);
       instance_create_layer(gx+224,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+288,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+416,gy+320,"Instances",obj_psnt_arch_body);
       instance_create_layer(gx+480,gy+320,"Instances",obj_barrel);
       instance_create_layer(gx+32,gy+352,"Instances",obj_vase);
       instance_create_layer(gx+480,gy+352,"Instances",obj_vase);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
		
		return "B";
    break;
    case 13:
       instance_create_layer(gx+96,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+128,gy+128,"Instances",obj_skull);
       instance_create_layer(gx+96,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+224,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+256,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+288,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+352,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+416,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+192,"Instances",obj_rock);
       instance_create_layer(gx+416,gy+192,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+224,"Instances",obj_rock);
       instance_create_layer(gx+160,gy+224,"Instances",obj_rock);
       instance_create_layer(gx+352,gy+224,"Instances",obj_rock);
       instance_create_layer(gx+416,gy+224,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+256,"Instances",obj_rock);
       instance_create_layer(gx+416,gy+256,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+160,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+224,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+256,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+288,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+416,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+384,gy+320,"Instances",obj_skull);
       instance_create_layer(gx+416,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
		
		return "B";
    break;
    case 14:
       instance_create_layer(gx+160,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+352,gy+96,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+96,gy+128,"Instances",obj_psnt_arch_body);
       instance_create_layer(gx+192,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+480,gy+128,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+448,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+480,gy+160,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+64,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+448,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+480,gy+288,"Instances",obj_rock);
       instance_create_layer(gx+32,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+416,gy+320,"Instances",obj_psnt_arch_body);
       instance_create_layer(gx+480,gy+320,"Instances",obj_rock);
       instance_create_layer(gx+160,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+192,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+320,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+352,gy+352,"Instances",obj_rock);
       instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
		
		return "B";
    break;
///Type SP
    case 15:
    case 16:
        instance_create_layer(gx+(roomwd/2),gy+16+(roomhg/2),"IF",obj_equipable);
        instance_create_layer(gx+(roomwd/2),gy+32+(roomhg/2),"Instances",obj_pedestal);
		
		return "SP";
    break;
    case 17:
    case 18:
    case 19:
    case 20:
    break;
///Boss
    case 50:
		instance_create_layer(gx+(roomwd/2),gy+32+(roomhg/2),"Instances",obj_bdoor);
	
		return "X";
    break;
 } 
}
