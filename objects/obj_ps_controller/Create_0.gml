if(scr_unique_inst()) {exit;}

once = false;

global.ps    = part_system_create_layer("BH",true);
global.ps_if = part_system_create_layer("IF",true);
global.ps_ps = part_system_create_layer("PS",true);

scr_part_fire_init();
scr_part_blue_fire_init();
scr_part_smoke_init();
scr_part_CHdirt_init();
scr_part_cbits_init();
scr_part_bbits_init();
scr_part_vbits_init(); 
scr_part_hspider_deadbits_init();
scr_part_icebits_init();
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
scr_part_haze_init();
scr_part_st_regen_init();
scr_part_st_poison_init();
scr_part_st_frost_init();
scr_part_st_wet_init();
scr_part_st_frozen_init();
scr_part_grass_blades1_init();
scr_part_grass_blades2_init();
scr_part_grass_blades3_init();