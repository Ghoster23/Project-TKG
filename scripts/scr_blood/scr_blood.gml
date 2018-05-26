//blood babby!!!
{
var obj_name    = object_get_name(self.object_index);
var xx          = argument0;
var yy          = argument1;
var dealer_name = argument2;

switch obj_name {
	
	case "obj_slm_cr": //slime
		
		var part_number = irandom_range(3,6);
		
		for(i=0; i < part_number; i++){
			var blood_dir = point_direction(xx,yy,x,y);
			var blood     = instance_create_layer(x,y,"IF",obj_blood_part);
			
			blood.dir  = blood_dir;
			blood.type = "slime";			
		}
		
		part_type_color_rgb(global.pt_blood,72,72,130,130,10,10);
		part_type_direction(global.pt_blood,point_direction(global.body.x,global.body.y,x,y)-5,point_direction(global.body.x,global.body.y,x,y)+5,0,0);
		part_particles_create(global.ps, x, y-5, global.pt_blood, 7);
		
		
	break;
	
	case "obj_psnt_body": 
	case "obj_psnt_arch_body":
	case "obj_bat":
		var part_number = irandom_range(1,4);
		
		for(var i = 0; i < part_number; i++){
			var blood_dir  = point_direction(xx,yy,x,y);
			var blood      = instance_create_layer(x,y,"IF",obj_blood_part);
			
			blood.dir  = blood_dir;
			blood.type = "regular";
		}
		
		repeat(3){
			instance_create_layer(x,y,"IF",obj_blood_part2);
		}
		
		part_type_color_rgb(global.pt_blood,144,150,0,0,0,0);
		part_type_direction(global.pt_blood,point_direction(global.body.x,global.body.y,x,y)-5,point_direction(global.body.x,global.body.y,x,y)+5,0,0);
		part_particles_create(global.ps, x, y-5, global.pt_blood, 6);
		
	break;
	
	default: //normal blood
		//instance_create_layer(x,y,"IF",obj_blood_part);
		
	break;
}
}