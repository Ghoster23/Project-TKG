///parameters - [ swing angle, damage dealer]
{
var num = argument0;

var parameters = params[num];

if(ang_off == ang_off_base){
	var inv =  1;
}else {
	var inv = -1;
}

ang_off -= parameters[0] * inv; //Determine new target
	
var swing = scr_create_damage_dealer(x+offx, y+offy, parameters[1], owner, false, 
									owner.stat[mult] * (1 + owner.modf[mult]), divi,
									5, kb_amount);
		
swing.phy_rotation = -angle;
		
scr_sound(snd_sword_slash);
		
alarm[num] = cds[num] * room_speed;
executing  = -1;
		
if(player_owned and amount > 0){
	amount--;
}

params[num] = parameters;
}