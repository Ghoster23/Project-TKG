/// @description Insert description here
// You can write your code in this editor
//if(stop == true and ds_exists(linkslist, ds_type_list)){
	
//	var targetlink = ds_list_find_value(linkslist,3); 

//	if(!is_undefined(targetlink)){
	
//		currentdir = point_direction(owner.x,owner.y,x,y); 
//		pulldir = point_direction(owner.x,owner.y,mouse_x,mouse_y);
//		strength = 5*abs(angle_difference(pulldir,currentdir));
	
//		if(angle_difference(pulldir,currentdir) > 0){
//			flip = 1;
//		}
//		else{
//			flip = -1;
//		}
	
//		with(targetlink){
//			physics_apply_impulse(x,y,lengthdir_x(other.strength,other.currentdir+other.flip*90),
//										lengthdir_y(other.strength,other.currentdir+other.flip*90));
//		}
//	}
//}

if(stop == true and ds_exists(linkslist, ds_type_list)){
	
	var targetlink = ds_list_find_value(linkslist,4); 

	if(!is_undefined(targetlink)){
	
		currentdir = point_direction(owner.x,owner.y,x,y); 
		pulldir = point_direction(owner.x,owner.y,mouse_x,mouse_y);
		strength = 5*abs(angle_difference(pulldir,currentdir));
	
		if(angle_difference(pulldir,currentdir) > 0){
			flip = 1;
		}
		else{
			flip = -1;
		}
	
		with(targetlink){
			physics_apply_impulse(x,y,lengthdir_x(other.strength,other.currentdir+other.flip*90),
										lengthdir_y(other.strength,other.currentdir+other.flip*90));
		}
	}
}