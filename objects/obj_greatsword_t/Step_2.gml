/// @description Insert description here
// You can write your code in this editor
if(stop == true){	
	pulldir = point_direction(owner.x,owner.y,mouse_x,mouse_y);
	currentdir = point_direction(owner.x,owner.y,x,y);
	strength = 5*abs(angle_difference(pulldir,currentdir));
	
	if(angle_difference(pulldir,currentdir) > 0){
		flip = 1;
	}
	else{
		flip = -1;
	}
	
	physics_apply_impulse(x,y,lengthdir_x(strength,currentdir+flip*90),lengthdir_y(strength,currentdir+flip*90));
	
}