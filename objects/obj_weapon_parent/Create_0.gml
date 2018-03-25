event_inherited();
offset = true;
offs   = 4;

image_speed = 0;

prev_image_speed = 0;

em  = part_emitter_create(global.ps_ps);
em_ = part_emitter_create(global.ps);
l   = 0;

drawn  = -1;
stowed = -1;

emitter = em;
em_sys  = global.ps_ps;
angle   = 0;

state = 0;
wep_pat = "None";