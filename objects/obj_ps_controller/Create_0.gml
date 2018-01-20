scr_unique_inst();

once = false;

global.ps    = part_system_create();
global.ps_if = part_system_create();
global.ps_ps = part_system_create();

scr_part_fire_init();
scr_part_smoke_init();
scr_part_CHdirt_init();
scr_part_cbits_init();
scr_part_vbits_init();    
scr_part_sflame_init();
scr_part_smflame_init();
scr_part_flnrbits_init();
scr_part_sowflame_init();
scr_part_ember_init();
scr_part_shine_init();
scr_part_danger_init();
scr_part_way_init();
scr_part_brewoinv_init();
scr_part_willowisp_init();
scr_part_blood();

part_system_layer(global.ps,   "BH");
part_system_layer(global.ps_if,"IF");
part_system_layer(global.ps_ps,"PS");