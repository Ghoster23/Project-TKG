global.options=false;
instance_create(0,0,obj_blackout);
instance_create(0,0,obj_background1);
instance_create(0,0,obj_title);
instance_create(320,365,obj_menu1);
instance_create(3,340,obj_quit);
posx1=mouse_x
posy1=mouse_y

if audio_is_playing(snd_music)=false{
audio_play_sound(snd_music,1,true);
}

var file_l;
file_l = file_text_open_read(working_directory + "\\file_l.txt");
global.language = file_text_read_real(file_l);
file_text_readln(file_l);
global.mvolume = file_text_read_real(file_l);
file_text_readln(file_l);
global.sfxvolume = file_text_read_real(file_l);
file_text_close(file_l);

audio_sound_gain(snd_music,global.mvolume/100,100);



