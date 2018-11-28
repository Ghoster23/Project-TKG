{
var ratio = 1 / (1 + abs(z) / 31);

switch type {
	default:
		draw_sprite_ext(spr_i_shadow, 0, x + 16, y + 28, shd_wd_r*ratio, shd_wd_r*ratio, 0, c_white, 1);
	break;
	
	case item_type.heart:
		draw_sprite_ext(spr_i_shadow, 0, x + 16, y + 28, shd_wd_r*ratio, shd_wd_r*ratio, 0, c_white, 1);
	break;
	
	case item_type.drop:
		draw_sprite_ext(spr_i_shadow, 0, x + 16, y + 20, shd_wd_r*ratio, shd_wd_r*ratio, 0, c_white, 1);
	break;
}

if(phy_speed <= 6 and z <= 3){
	modulator=scr_approach(modulator,1,0.04);
	 
}else{
	modulator = power( exp(1) , -0.2*abs(z)-1 ) + 1;  
}

scr_draw_item(type,item,amount,
x - (sprite_width*(clamp(modulator,1,1.3)-1))/2,
(y - z) + (sprite_width*(clamp(modulator,1,1.3)-1))/2 ,
clamp(modulator,1,1.3),
image_yscale+(1-clamp(modulator,1,1.3)),
image_alpha);
}