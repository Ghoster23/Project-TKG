scr_get_input();


switch state{

	case "play":
		if !instance_exists(obj_pointer){
			instance_create_layer(303,267,"Instances",obj_pointer);
		}
		else{
		obj_pointer.x=303;
		obj_pointer.y=267;
		}
		if (attack_key and point_in_rectangle(mouse_x,mouse_y,305,258,342,275)) or enter_key{
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
			instance_create_layer(291,298,"Instances",obj_pointer);
		}
		else{
		obj_pointer.x=291;
		obj_pointer.y=298;
		}
		if (attack_key and point_in_rectangle(mouse_x,mouse_y,294,289,354,306)) or enter_key{
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
			instance_create_layer(303,331,"Instances",obj_pointer);
		}
		else{
		obj_pointer.x=303;
		obj_pointer.y=331;
		}
		if (attack_key and point_in_rectangle(mouse_x,mouse_y,304,323,338,337)) or enter_key{
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


if point_in_rectangle(mouse_x,mouse_y,305,258,342,275){
	state="play";
}
if point_in_rectangle(mouse_x,mouse_y,294,289,354,306){
	state="options";
}
if point_in_rectangle(mouse_x,mouse_y,304,323,338,337){
	state="quit";
}