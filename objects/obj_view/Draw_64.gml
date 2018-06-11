/*draw_set_halign(fa_middle);
draw_set_valign(fa_bottom);

draw_text(64, 32,"Movement State: " + string(m_state));
draw_text(64, 64,"Zoom State: " + string(z_state));

var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);

draw_text(64, 96,"x: " + string(xx) + " y: " + string(yy));
draw_text(64,128,"wd: " + string(cam_wd) + " hg: " + string(cam_hg));
draw_text(64,150,"zoom: " + string(zoom));
draw_text(64,182,"Target zoom: " + string(t_zoom));

draw_rectangle(xx,yy,xx+16,yy+16,false);