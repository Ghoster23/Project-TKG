state="fullscreen";

m  = global.gui_ratio;
hc = global.gui_WD / 2;
vc = global.gui_HG / 2;
off = 96;
image_speed = 0.5;


//Video
video_width  = string_width_ext("Video Options",2,200)*m;
video_height = string_height_ext("Video Options",2,200)*m; 
video_x1 = hc-((video_width)/2);
video_y1 = (off) * m
video_x2 = video_x1 + video_width;
video_y2 = video_y1+ video_height;

//fullscreen
fullscreen_width  = string_width_ext("Fullscreen",2,200)*m;
fullscreen_height = string_height_ext("Fullscreen",2,200)*m; 
fullscreen_x1 = hc-((fullscreen_width)/2);
fullscreen_y1 = (off+32) * m
fullscreen_x2 = fullscreen_x1 + fullscreen_width;
fullscreen_y2 = fullscreen_y1+ fullscreen_height;

//fullscreen_state=global.fullscreen; //-ON -OFF

//screenshake
screenshake_width  = string_width_ext("Screen shake",2,200)*m;
screenshake_height = string_height_ext("Screen shake",2,200)*m; 
screenshake_x1 = hc-((screenshake_width)/2);
screenshake_y1 = (off+32+40) * m
screenshake_x2 = screenshake_x1 + screenshake_width;
screenshake_y2 = screenshake_y1+ screenshake_height;

//screenshake_state=global.screenshake; //-none -low -normal -high

//text scroll
textscroll_width  = string_width_ext("Text Scroll",2,200)*m;
textscroll_height = string_height_ext("Text Scroll",2,200)*m; 
textscroll_x1 = hc-((textscroll_width)/2);
textscroll_y1 = (off+32+40+40) * m
textscroll_x2 = textscroll_x1 + textscroll_width;
textscroll_y2 = textscroll_y1+ textscroll_height;

//textscroll_state=global.textscroll; //-low -normal -high

//particles
particles_width  = string_width_ext("Particles",2,200)*m;
particles_height = string_height_ext("Particles",2,200)*m; 
particles_x1 = hc-((particles_width)/2);
particles_y1 = (off+32+40+40+40) * m
particles_x2 = particles_x1 + particles_width;
particles_y2 = particles_y1+ particles_height;

//particles_state=global.particles//-none -low -normal