//blood babby!!!

obj_name = object_get_name(object_index);

dealer_id = argument[0];
dealer_name = object_get_name(dealer_id.object_index);

show_debug_message(obj_name);
show_debug_message(dealer_id);
show_debug_message(dealer_name);

switch obj_name {
	
	case "obj_slm_cr": //slime
		//instance_create_layer(x,y,"IF",obj_blood_part);
		
	break;
	
	case "obj_psnt_body":
		blood_dir=point_direction(dealer_id.x,dealer_id.y,x,y);
		blood = instance_create_layer(x,y,"IF",obj_blood_part);
		blood.dir=blood_dir;
	break;
	
	default: //normal blood
		instance_create_layer(x,y,"IF",obj_blood_part);
		
	break;
}