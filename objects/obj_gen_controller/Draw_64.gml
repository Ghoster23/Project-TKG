c = surface_get_width(application_surface) / 2;

m = display_get_gui_width() / global.roomwd;

draw_rectangle(c - comp * m, 32 * m, c + comp * m, 40 * m, false);
draw_rectangle(c - 105 * m, 27 * m, c + 105 * m, 45 * m, true);
draw_text_ext_transformed(c + 120 * m, 36 * m, string(attempts) + " " + string(roomgenerated), 1, 500, m, m, 0);
	
