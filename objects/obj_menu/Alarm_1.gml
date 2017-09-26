/// @description options
var thislayer = layer_background_get_id("blackout");
layer_background_visible(thislayer,true);

instance_create_layer(x,y,layer,obj_options_controller);

var thislayer = layer_background_get_id("buttons");
layer_background_visible(thislayer,false);

with obj_pointer{
	instance_destroy();
}

instance_deactivate_object(obj_menu); 

