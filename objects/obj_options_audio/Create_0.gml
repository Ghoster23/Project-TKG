scr_unique_inst();

state="master";
m = display_get_gui_width() / global.roomwd;
c = surface_get_width(application_surface)/2;
off = 86;
image_speed=0.5;


//audio
audio_width = string_width_ext("Audio Options",2,200)*m;
audio_height = string_height_ext("Audio Options",2,200)*m; 
audio_x1 = c-((audio_width)/2);
audio_y1 = (off) * m
audio_x2 = audio_x1 + audio_width;
audio_y2 = audio_y1+ audio_height;

//master
master_width = string_width_ext("Master",2,90)*m;
master_height = string_height_ext("Master",2,90)*m; 
master_x1 = c-((master_width)/2);
master_y1 = (off+32) * m
master_x2 = master_x1 + master_width;
master_y2 = master_y1+ master_height;

mastervolume=scr_volume("a",global.masterVolume);

//music
music_width = string_width_ext("Music",2,90)*m;
music_height = string_height_ext("Music",2,90)*m; 
music_x1 = c-((music_width)/2);
music_y1 = (off+32+40) * m
music_x2 = music_x1 + music_width;
music_y2 = music_y1+ music_height;

musicvolume=scr_volume("a",global.musicVolume);

//effects
effects_width = string_width_ext("Effects",2,12)*m;
effects_height = string_height_ext("Effects",2,12)*m; 
effects_x1 = c-((effects_width)/2);
effects_y1 = (off+32+40+40) * m
effects_x2 = effects_x1 + effects_width;
effects_y2 = effects_y1+ effects_height;

effectsvolume=scr_volume("a",global.effectsVolume);

//ambient
ambient_width = string_width_ext("Ambient",2,12)*m;
ambient_height = string_height_ext("Ambient",2,12)*m; 
ambient_x1 = c-((ambient_width)/2);
ambient_y1 = (off+32+40+40+40) * m
ambient_x2 = ambient_x1 + ambient_width;
ambient_y2 = ambient_y1+ ambient_height;

ambientvolume=scr_volume("a",global.ambientVolume);

//creatures
creatures_width = string_width_ext("Creatures",2,12)*m;
creatures_height = string_height_ext("Creatures",2,12)*m; 
creatures_x1 = c-((creatures_width)/2);
creatures_y1 = (off+32+40+40+40+40) * m
creatures_x2 = creatures_x1 + creatures_width;
creatures_y2 = creatures_y1+ creatures_height;

creaturesvolume=scr_volume("a",global.creatureNoise);

