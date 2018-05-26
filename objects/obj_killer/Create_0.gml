image_speed = 0;

switch global.killer {
	case "obj_bat" :
		sprite_index = spr_bat;
	break;
	case "obj_slm_cr" :
		sprite_index = spr_slime_down;
	break;
	case "obj_swing" :
	case "obj_arrow" :
		sprite_index = spr_melee_tell;
	break;
	case "obj_mimic" :
		sprite_index = spr_mimic_a;
		image_index = 3;
	break;
	case "spr_bomb" :
		sprite_index = spr_hspider_walk;
	break;
	default:
		sprite_index = spr_melee_tell;
	break;
}  