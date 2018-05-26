image_speed = 0;
image_index = irandom(4);
event_inherited();

mp_grid_add_rectangle(global.ai_grid,x,y,x+31,y+31);
global.shake += 3;

image_xscale = 0.1;
image_yscale = 0.1;

rate = 0.1;

inc_x = sprite_width * rate / 2;
inc_y = sprite_height * rate / 2;

offset = true;
offs   = -16;

if(place_meeting(x,y,obj_grassblade)){
	with(other){
		instance_destroy();
	}
}