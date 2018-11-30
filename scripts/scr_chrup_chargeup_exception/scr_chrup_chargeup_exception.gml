{
var skill_id = skills[charging];

switch skill_id {	
	case scr_skill_chain_throw:
	case scr_skill_throw:
		executing = charging;
		charging  = -1;
		
		if(charge_scr != -1){ script_execute(charge_scr, -1) };
		
		if(meter != noone){
			instance_destroy(meter);
			meter = noone;
		}
		
		return true;
	break;
}

return false;
}