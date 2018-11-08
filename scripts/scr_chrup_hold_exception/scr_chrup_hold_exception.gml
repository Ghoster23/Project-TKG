{
var skill_id = skills[charging];

switch skill_id {
	case scr_skill_stream:
		executing = charging;
		charging  = -1;
		chargeup  =  0;
		
		if(charge_scr != -1){ script_execute(charge_scr, -1) };
		
		if(meter != noone){
			instance_destroy(meter);
			meter = noone;
		}
	break;
}
}