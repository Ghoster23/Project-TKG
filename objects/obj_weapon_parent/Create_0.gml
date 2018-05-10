event_inherited();
owner = noone;

//Pause
prev_image_speed = 0;

for(i = 0; i < alarm_count; i++){
	alarms[i] = -1;
}

//Particles
em  = part_emitter_create(global.ps_ps);
em_ = part_emitter_create(global.ps);
l   = 0;

emitter = em;
em_sys  = global.ps_ps;
angle   = 0;

//Visuals
offset = true;
offs   = 4;

image_speed = 0;

drawn  = -1;
stowed = -1;

particle = global.pt_star;
amount   = 0;

//Mechanics
state   = 0;
wep_pat = -1;