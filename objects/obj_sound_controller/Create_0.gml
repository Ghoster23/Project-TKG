//set all the diferent volumes, this will be done
//by loading a file later on

global.masterVolume=1;
global.musicVolume=1;
global.effectsVolume=1;
global.ambientVolume=1;
global.creatureNoise=1;

//set master volume gain
audio_master_gain(global.masterVolume);

//load various audio groups
audio_group_load(ag_music);
audio_group_load(ag_ambient);
audio_group_load(ag_soundfx);
audio_group_load(ag_creatures);

