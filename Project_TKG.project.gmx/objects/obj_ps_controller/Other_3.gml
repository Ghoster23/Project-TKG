//Particles
part_type_destroy(global.pt_vbits)
part_type_destroy(global.pt_cbits)
part_type_destroy(global.pt_smoke)
part_type_destroy(global.pt_fire)
part_system_destroy(global.ps);

//Surface
if surface_exists(global.lighting){
    surface_free(global.lighting);
}

window_set_fullscreen(true);
global.MonitorW = display_get_width();
global.MonitorH = display_get_height();
show_debug_message("MW" + string(global.MonitorW));
show_debug_message("MH" + string(global.MonitorH));

rm_wd = 544;
rm_hg = 416;

global.Xoffset=(global.MonitorW-rm_wd)/2;
global.Yoffset=(global.MonitorH-rm_hg)/2;

if(global.MonitorW>=rm_wd*2 ){
    surface_resize(application_surface,rm_wd*2,rm_hg*2);
    global.Xoffset=(global.MonitorW-rm_wd*2)/2;
    global.Yoffset=(global.MonitorH-rm_hg*2)/2;
}
if(global.MonitorW>=rm_wd*3 ){
    surface_resize(application_surface,rm_wd*3,rm_hg*3);
    global.Xoffset=(global.MonitorW-rm_wd*3)/2;
    global.Yoffset=(global.MonitorH-rm_hg*3)/2;
}
if(global.MonitorW>=rm_wd*4 ){
    surface_resize(application_surface,rm_wd*4,rm_hg*4);
    global.Xoffset=(global.MonitorW-rm_wd*4)/2;
    global.Yoffset=(global.MonitorH-rm_hg*4)/2;
}
if(global.MonitorW>=rm_wd*5 ){
    surface_resize(application_surface,rm_wd*5,rm_hg*5);
    global.Xoffset=(global.MonitorW-rm_wd*5)/2;
    global.Yoffset=(global.MonitorH-rm_hg*5)/2;
}

