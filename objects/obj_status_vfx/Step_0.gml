if(not global.pause and booted and owner != noone and instance_exists(owner)){
	switch status {
		case statuses.regen:
			part = global.pt_st_regen;
			amt  = 1;
		break;
		
		case statuses.poison:
			part = global.pt_st_poison;
			amt  = -1;
		break;
		
		case statuses.frost:
			part = global.pt_st_frost;
			amt  = -4;
		break;
		
		case statuses.frozen:
			part = global.pt_st_frozen;
			amt  = -6;
		break;
		
		case statuses.wet:
			part = global.pt_st_wet;
			amt  = -3;
		break;
		
		case statuses.burning:
			part = global.pt_fire;
			amt  = -3;
		break;
		
		default:
			part = "NULL";
		break;
	}
	
	if(part != "NULL"){
		var xx = irandom_range(x,x+width);
		var yy = irandom_range(y,y+height);
		
		if(amt < 0){ if(irandom(amt * -1) == 1) { amt = 1;}}
		
		part_particles_create(global.ps_if,xx,yy,part,amt);
	}
}