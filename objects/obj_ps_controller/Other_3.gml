//Particles
part_type_destroy(global.pt_vbits);
part_type_destroy(global.pt_cbits);
part_type_destroy(global.pt_smoke);
part_type_destroy(global.pt_CHdirt);
part_type_destroy(global.pt_sflame);
part_type_destroy(global.pt_smflame);
part_type_destroy(global.pt_flnrbits);
part_type_destroy(global.pt_sow_fire);
part_type_destroy(global.pt_embers);
part_type_destroy(global.pt_shine);
part_type_destroy(global.pt_danger);
part_type_destroy(global.pt_way);
part_system_destroy(global.ps);
part_system_destroy(global.ps_if);
part_system_destroy(global.ps_ps);

//Surface
if surface_exists(global.lighting){
    surface_free(global.lighting);
}

scr_screen_res();