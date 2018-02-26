image_speed= 1;
image_xscale =1;
event_inherited();
scr_sound(snd_dodgeroll);

if global.body.hspd > 0 {
    sprite_index = global.body.roll_sprs[1];
	image_xscale =  1;
    
}
else if global.body.hspd < 0 {
    sprite_index = global.body.roll_sprs[1];
	image_xscale = -1;
    
}
else if global.body.vspd < 0 {
    sprite_index = global.body.roll_sprs[0];
	image_xscale =  1;
    
}
else if global.body.vspd > 0 {
    sprite_index =  global.body.roll_sprs[2];
	image_xscale =  1;
    
}