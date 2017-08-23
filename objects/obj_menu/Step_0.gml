scr_get_input();


switch state{

	case "play":
		if !instance_exists(obj_pointer){
			instance_create_layer(303,214,"Instances",obj_pointer);
		}
		else{
		obj_pointer.x=303;
		obj_pointer.y=214;
		}
		if (attack_key and point_in_rectangle(mouse_x,mouse_y,268,207,372,224)) or enter_key{
			alarm[0]=room_speed*0.2;
		}
		if a_down{
			state="options";
		}
		if a_up{
			state="quit";
		}
		break;
	
	case "options":
		if !instance_exists(obj_pointer){
			instance_create_layer(291,245,"Instances",obj_pointer);
		}
		else{
		obj_pointer.x=291;
		obj_pointer.y=245;
		}
		if (attack_key and point_in_rectangle(mouse_x,mouse_y,257,238,383,255)) or enter_key{
			alarm[1]=room_speed*0.2;
		}
		if a_down{
			state="quit";
		}
		if a_up{
			state="play";
		}
		break;
	
	case "quit":
		if !instance_exists(obj_pointer){
			instance_create_layer(303,278,"Instances",obj_pointer);
		}
		else{
		obj_pointer.x=303;
		obj_pointer.y=278;
		}
		if (attack_key and point_in_rectangle(mouse_x,mouse_y,245,270,395,287)) or enter_key{
			alarm[2]=room_speed*0.2;
		}
		if a_down{
			state="play";
		}
		if a_up{
			state="options";
		}
		break;

}


if point_in_rectangle(mouse_x,mouse_y,268,207,372,224){
	state="play";
}
if point_in_rectangle(mouse_x,mouse_y,257,238,383,255){
	state="options";
}
if point_in_rectangle(mouse_x,mouse_y,245,270,395,287){
	state="quit";
}