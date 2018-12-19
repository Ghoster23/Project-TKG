event_inherited();

draw_script = scr_draw_pulse;
pulse_path = path_add();
path_set_closed(pulse_path,false);
path_set_kind(pulse_path,1);
path_set_precision(pulse_path, 8);
pulse = spr_dark_pulse;
pulse_frame = 0;
pulse_speed = 0.6;
pulse_width = 0;
pulse_wd_vr = 0.75;
pulse_wd_mx = 1;

node       = noone;
node_count = 0;

state = 0;

p_xx = x;
p_yy = y;

destroyed = false;
collided = false;