application_surface_draw_enable(false);

//Start
window_set_fullscreen(true);
global.MonitorW = display_get_width();
global.MonitorH = display_get_height();

rm_wd = 672;
rm_hg = 418;

once = false;
adjust = true;

//Create Event
step_number = 0;

//Particle System
global.ps=part_system_create();
scr_part_fire_init();
scr_part_smoke_init();
scr_part_CHdirt_init();
scr_part_cbits_init();
scr_part_vbits_init();    
scr_part_sflame_init();
scr_part_trail_init();
part_system_layer(global.ps,"BH");


//Surface
global.lighting = surface_create(room_width,room_height);

surface_set_target(global.lighting);
draw_clear_alpha(c_black,0);

surface_reset_target();

