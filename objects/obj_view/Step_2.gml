switch room {
	case rm_level:
		x += hspeed;
		y += vspeed;
	break;
	case rm_CH_boss:
		y = obj_body.phy_position_y;
		x = room_width div 2;
	break;
}