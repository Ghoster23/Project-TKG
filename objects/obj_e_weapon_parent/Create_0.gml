//Visuals
event_inherited();

offset = true;
offs   = 4;

image_speed = 0;

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

owner = noone;

state = 0;