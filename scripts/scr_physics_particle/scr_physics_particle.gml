///scr_physics_particle(number,sprite,dira,dirb,rotation(opt))

//number of particles
//sprite to use
//inferior limit dir
//superior limit dir

var rot = 0;
if(argument_count == 5){
	rot = argument[4];
}

repeat(argument[0]){
	var solid_part = instance_create_layer(x,y,layer,obj_solid_part);
	solid_part.sprite_index = argument[1];
	solid_part.dir[0]       = argument[2];
	solid_part.dir[1]       = argument[3];
	solid_part.rotation = rot;
}