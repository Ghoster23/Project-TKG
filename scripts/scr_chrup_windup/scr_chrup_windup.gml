///@params charge_time
{
if(argument0 == -1){
	ang_off = windup_start;
	return;
}

if(ang_off ==  ang_off_base) { windup_start = ang_off; }
if(ang_off == -ang_off_base) { windup_start = ang_off; }

var amnt = 30 / (argument0 * room_speed);

if(windup_start ==  ang_off_base){ var targ = windup_start + 30; }
if(windup_start == -ang_off_base){ var targ = windup_start - 30; }

ang_off = scr_approach(ang_off, targ, amnt);

var res = (ang_off-windup_start)/(targ-windup_start);

if(res == 1){
	ang_off += random_range(-amnt*2,amnt*2);
}

return res;
}