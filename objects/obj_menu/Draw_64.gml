if scr_GUI_h_button_check(305 * global.gui_ratio,258 * global.gui_ratio,(342-305) * global.gui_ratio,(275-258) * global.gui_ratio) != 0{
	state="play";
}
if scr_GUI_h_button_check(294 * global.gui_ratio,289 * global.gui_ratio,(354-294) * global.gui_ratio,(306-289)* global.gui_ratio) != 0{
	state="options";
}
if scr_GUI_h_button_check(304 * global.gui_ratio,323 * global.gui_ratio,(338-304) * global.gui_ratio,(337-323) * global.gui_ratio) != 0{
	state="quit";
}