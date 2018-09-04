scr_unique_inst();

if global.fullscreen == "ON" {
	window_set_fullscreen(true);
}
else{
	window_set_fullscreen(false);
}

state = "audio";

m = global.gui_WD / global.roomwd;

hc = global.gui_WD  / 2;
vc = global.gui_HG / 2;

gui_WD = global.gui_WD;
gui_HG = global.gui_HG;
off = 96;
image_speed=0.5;

///Audio variables
//Text
audio_width  = string_width_ext("Audio",2,12)*m;
audio_height = string_height_ext("Audio",2,12)*m;

//Button
audio_x1 = hc-((audio_width)/2);
audio_y1 = (64 + off) * m;
audio_x2 = audio_x1 + audio_width;
audio_y2 = audio_y1 + audio_height;

///Video variables
//Text
video_width  = string_width_ext("Video",2,12)*m;
video_height = string_height_ext("Video",2,12)*m;

//Button
video_x1 = hc-((video_width)/2);
video_y1 = (96 + off) * m;
video_x2 = video_x1 + video_width;
video_y2 = video_y1 + video_height;

///Controls variables
//Text
controls_width  = string_width_ext("Controls",2,12)*m;
controls_height = string_height_ext("Controls",2,12)*m;

//Button
controls_x1 = hc-((controls_width)/2);
controls_y1 = (128 + off) * m;
controls_x2 = controls_x1 + controls_width;
controls_y2 = controls_y1 + controls_height;