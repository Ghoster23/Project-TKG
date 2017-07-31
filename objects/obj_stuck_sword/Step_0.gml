scr_get_input();
//pick up sword
if distance_to_object(obj_body)<=20 and interact_key{
	instance_create_layer(obj_body.x,obj_body.y,layer,obj_sword);
	instance_destroy();
}