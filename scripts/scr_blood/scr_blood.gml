//blood babby!!!

obj_name = object_get_name(object_index);

dealer_id = argument[0];
dealer_name = object_get_name(dealer_id.object_index);

show_debug_message(obj_name);
show_debug_message(dealer_id);
show_debug_message(dealer_name);

switch obj_name {
	
	case "obj_slm_cr": //slime
		
		part_number = irandom_range(3,6);
			for(i=0; i < part_number; i++){
				blood_dir = point_direction(dealer_id.x,dealer_id.y,x,y);
				blood = instance_create_layer(x,y,"IF",obj_blood_part);
				blood.dir=blood_dir;
				blood.type="slime";			
			}
		part_type_color_rgb(global.pt_blood,72,72,130,130,10,10);
		part_type_direction(global.pt_blood,point_direction(global.body.x,global.body.y,x,y)-5,point_direction(global.body.x,global.body.y,x,y)+5,0,0);
		part_particles_create(global.ps, x, y-5, global.pt_blood, 7);
		
		
	break;
	
	case "obj_psnt_body": 
	case "obj_psnt_arch_body":
	case "obj_bat":
	
		part_number = irandom_range(1,4);
			for(i=0; i < part_number; i++){
				blood_dir=point_direction(dealer_id.x,dealer_id.y,x,y);
				blood = instance_create_layer(x,y,"IF",obj_blood_part);
				blood.dir=blood_dir;
				blood.type="regular";
			}
		repeat(3){
			instance_create_layer(x,y,"IF",obj_blood_part2);
		}
		part_type_color_rgb(global.pt_blood,144,150,0,0,0,0);
		part_type_direction(global.pt_blood,point_direction(global.body.x,global.body.y,x,y)-5,point_direction(global.body.x,global.body.y,x,y)+5,0,0);
		part_particles_create(global.ps, x, y-5, global.pt_blood, 6);
		
	break;
	
	default: //normal blood
		instance_create_layer(x,y,"IF",obj_blood_part);
		
	break;
}