switch state {
	case 0:
	break;
	case 1:
		state      = 2;
		phy_active = true;
		offs += 6;
	break;
	case 2:
		state      = 0;
		triggered  = false;
		phy_active = false;
		offs -= 6;
	break;
}
