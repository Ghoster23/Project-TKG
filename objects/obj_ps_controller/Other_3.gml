//Particles
part_type_destroy(global.pt_vbits)
part_type_destroy(global.pt_cbits)
part_type_destroy(global.pt_smoke)
part_type_destroy(global.pt_CHdirt)
part_type_destroy(global.pt_fire)
part_system_destroy(global.ps);
part_system_destroy(global.ps_if);

//Surface
if surface_exists(global.lighting){
    surface_free(global.lighting);
}

scr_screen_res();