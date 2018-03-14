/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
offset      = true;
offs        =  -20;

draw_script=scr_drawwind;
uTime = shader_get_uniform(sh_wind,"Time");

move=false;
counter=0;
switch(irandom_range(1,2)){
	case 1:
		sideswing=-1;
		break;
	case 2:
		sideswing=1;
		break;
}

image_speed=0;
image_index=irandom_range(0,image_number);