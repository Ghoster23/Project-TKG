event_inherited();

phy_fixed_rotation=true;

image_speed=0;

//draw_script=scr_psnt_draw;

dir=point_direction(global.body.x,global.body.y,x,y);
physics_apply_impulse(x, y, lengthdir_x(210, dir ),lengthdir_y(210, dir ));

//determine the side the dude goes
if(dir>90 and dir<=270){
	image_xscale=-1;	
}else{
	image_xscale=1;
}