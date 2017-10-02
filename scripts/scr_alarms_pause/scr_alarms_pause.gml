///@param Number of alarms
n = argument0;

for(i = 0; i < n; i++){
	if alarm[i] != -1 {
		alarms[i] = alarm[i];
		alarm[i] = -1;
	}
}