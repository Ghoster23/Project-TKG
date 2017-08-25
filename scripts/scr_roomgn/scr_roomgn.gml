roomhg = global.roomhg;
roomwd = global.roomwd;

typeroom = argument0;
gx = argument1;
gy = argument2;

///Base Room
instance_create_layer(gx + (global.roomwd / 2) + 64,gy + 48,"Instances",obj_torch);
instance_create_layer(gx+global.roomwd/2-96,gy+48,"Instances",obj_torch);
instance_create_layer(gx,gy,"Instances",obj_wall_left);
instance_create_layer(gx,gy,"Instances",obj_wall_up);
instance_create_layer(gx,gy+global.roomhg-32,"Instances",obj_wall_down);
instance_create_layer(gx+global.roomwd-32,gy,"Instances",obj_wall_right);
instance_create_layer(gx+(global.roomwd/2),gy+(global.roomhg/2)+31,"Floor",obj_floor);

switch(typeroom){
	///Type A
	case 0:
	    instance_create_layer(gx+192,gy+128,"Instances",obj_rock);
	    instance_create_layer(gx+224,gy+128,"Instances",obj_rock);
	    instance_create_layer(gx+256,gy+128,"Instances",obj_rock);
	    instance_create_layer(gx+288,gy+128,"Instances",obj_rock);
	    instance_create_layer(gx+320,gy+128,"Instances",obj_rock);
	    
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
	    
	    instance_create_layer(gx+192,gy+320,"Instances",obj_rock);
	    instance_create_layer(gx+224,gy+320,"Instances",obj_rock);
	    instance_create_layer(gx+256,gy+320,"Instances",obj_rock);
	    instance_create_layer(gx+288,gy+320,"Instances",obj_rock);
	    instance_create_layer(gx+320,gy+320,"Instances",obj_rock);
        
		return 14;
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
        
		return 14;
	break;
	case 2:
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
	    
		return 14;
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
        
		return 14;
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
        
		return 14;
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
        
		return 14
	break;
	///Type B
	case 6:
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
        
		return 14;
	break;
	case 7:
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
        
		return 14;
	break;
	case 8:
		instance_create_layer(gx+96,gy+128,"Instances",obj_slm_cr);
	    instance_create_layer(gx+416,gy+128,"Instances",obj_slm_cr);
	    instance_create_layer(gx+256,gy+160,"Instances",obj_vase);
	    instance_create_layer(gx+224,gy+192,"Instances",obj_vase);
	    instance_create_layer(gx+288,gy+192,"Instances",obj_vase);
	    instance_create_layer(gx+192,gy+224,"Instances",obj_vase);
	    instance_create_layer(gx+256,gy+224,"Instances",obj_heart);
	    instance_create_layer(gx+320,gy+224,"Instances",obj_vase);
	    instance_create_layer(gx+224,gy+256,"Instances",obj_vase);
	    instance_create_layer(gx+288,gy+256,"Instances",obj_vase);
	    instance_create_layer(gx+256,gy+288,"Instances",obj_vase);
	    instance_create_layer(gx+96,gy+320,"Instances",obj_slm_cr);
	    instance_create_layer(gx+416,gy+320,"Instances",obj_slm_cr);
		
		return 14;
	break;
	case 9:
	    instance_create_layer(gx+96,gy+128,"Instances",obj_rock);
	    
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
	    
	    instance_create_layer(gx+416,gy+320,"Instances",obj_rock);
		
		return 14;
	break;
	case 10:
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
		
		return 14;
	break;
	///Type Store
	case 11:
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
	    instance_create_layer(gx+256,gy+224,"Instances",obj_heart);
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
		
		return 15;
	break;
	case 12:
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
		
		return 15;
	break;
	case 13:
	    instance_create_layer(gx+256,gy+160,"Instances",obj_vase);
	    instance_create_layer(gx+128,gy+224,"Instances",obj_vase);
	    instance_create_layer(gx+192,gy+224,"Instances",obj_chest);
	    instance_create_layer(gx+320,gy+224,"Instances",obj_mimic);
	    instance_create_layer(gx+384,gy+224,"Instances",obj_vase);
	    instance_create_layer(gx+256,gy+288,"Instances",obj_vase);
	    instance_create_layer(gx+(roomwd/2),gy+240,"Instances",obj_ppoff);
       
		return 15;
	break;
	case 14:
	    instance_create_layer(gx+256,gy+160,"Instances",obj_vase);
	    instance_create_layer(gx+128,gy+224,"Instances",obj_vase);
	    instance_create_layer(gx+192,gy+224,"Instances",obj_mimic);
	    instance_create_layer(gx+320,gy+224,"Instances",obj_chest);
	    instance_create_layer(gx+384,gy+224,"Instances",obj_vase);
	    instance_create_layer(gx+256,gy+288,"Instances",obj_vase);
		
		return 15;
	break;
	///Type SP
	case 15:
	case 16:
	    instance_create_layer(gx+(roomwd/2)-16,gy-16+(roomhg/2),"Instances",obj_pedestal);
		instance_create_layer(gx+(roomwd/2)-16,gy-48+(roomhg/2),"IF",obj_equipable);
		
		return 17;
	break;
	case 17:
	case 18:
	case 19:
	case 20:
		return 16;
	break;
	///Boss
	case 50:
		instance_create_layer(gx+(roomwd/2),gy+32+(roomhg/2),"Instances",obj_bdoor);
	
		return 18;
	break;
}