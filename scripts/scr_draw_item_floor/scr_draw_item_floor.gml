{
switch type {
	default:
		draw_sprite_ext(spr_i_shadow, 0, x + 16, y + 28, shd_wd_r*image_xscale, shd_wd_r*image_yscale, 0, c_white, 1);

	break;
	
	case item_type.heart:
		
	break;
	
	case item_type.drop:
		draw_sprite_ext(spr_i_shadow, 0, x + 16, y + 20, shd_wd_r*image_xscale, shd_wd_r*image_yscale, 0, c_white, 1);
	break;
}

scr_draw_item(type, item, amount, x, y, image_xscale, image_yscale, image_alpha);
}
