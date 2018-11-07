///@params charge_time
{
if(argument0 == -1){ ang_off = windup_start; }

var amnt = 30 / (argument0 * room_speed);

if(not variable_instance_exists(id, "windup_start") || windup_start != ang_off){ windup_start = ang_off; }

if(windup_start ==  ang_off_base){ var target = windup_start + 30; }
if(windup_start == -ang_off_base){ var target = windup_start - 30; }

ang_off = scr_approach(ang_off, target, amnt);

if(ang_off == target){ chargeup = true; }
}