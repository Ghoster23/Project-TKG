///@params charge_time
{
if(not variable_instance_exists(id, "windup_start")){ windup_start = ang_off; }

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

return (ang_off-windup_start)/(targ-windup_start);
}