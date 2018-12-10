if((place_meeting(x,y,obj_character_body_parent) or place_meeting(x,y,obj_enemy_parent)) and move == false){ 
	counter=0;
	move = true;
}
if move==true{
	counter+=0.1;
	image_angle=10*sin(sideswing*2*pi*clamp(counter,0,1))
	if(!(place_meeting(x,y,obj_character_body_parent) or place_meeting(x,y,obj_enemy_parent))){
		move = false;
		image_angle=0;
	}
}

if(place_meeting(x,y,obj_damage_dealer)){
	part_particles_create(global.ps_if, x, y, global.pt_grass_blades1, irandom_range(0,2));
	part_particles_create(global.ps_if, x, y, global.pt_grass_blades2, irandom_range(0,2));
	part_particles_create(global.ps_if, x, y, global.pt_grass_blades3, irandom_range(0,2));
	instance_destroy();
}