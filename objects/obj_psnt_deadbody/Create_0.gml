event_inherited();

draw_script = scr_psnt_draw;
phy_fixed_rotation=true;

image_speed=0;

//draw_script=scr_psnt_draw;

body_type=0;
body_color=0;

dir=point_direction(global.body.x,global.body.y,x,y);
physics_apply_impulse(x, y, lengthdir_x(210, dir ),lengthdir_y(210, dir ));

//determine the side the dude goes
if(dir>90 and dir<=270){
	side=-1;	
}else{
	side=1;
}