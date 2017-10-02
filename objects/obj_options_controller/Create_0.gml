scr_unique_inst();

state="audio";
m = display_get_gui_width() / global.roomwd;
c = surface_get_width(application_surface)/2;
off = 96;
image_speed=0.5;

audio_width = string_width_ext("Audio",2,12)*m;
audio_height = string_height_ext("Audio",2,12)*m; 
audio_x1 = c-((audio_width)/2);
audio_y1 = (64 + off) * m
audio_x2 = audio_x1 + audio_width;
audio_y2 = audio_y1+ audio_height;

video_width = string_width_ext("Video",2,12)*m;
video_height = string_height_ext("Video",2,12)*m; 
video_x1 = c-((video_width)/2);
video_y1 = (96 + off) * m
video_x2 = video_x1 + video_width;
video_y2 = video_y1 + video_height;

controls_width = string_width_ext("Controls",2,12)*m;
controls_height = string_height_ext("Controls",2,12)*m; 
controls_x1 = c-((controls_width)/2);
controls_y1 = (128 + off) * m
controls_x2 = controls_x1 + controls_width;
controls_y2 = controls_y1 + controls_height;