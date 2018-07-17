///@description create a light
///@param x
///@param y
///@param front? (true->front : false->back)
///@param radius
///@param color

{
	var x_      = argument0;
	var y_      = argument1;
	var front   = argument2;
	var radius_ = argument3;
	var color_  = argument4;

	if(front == true){
		var light = instance_create_layer(x_,y_,"Instances",obj_light_front);
	}
	else{
		var light = instance_create_layer(x_,y_,"Instances",obj_light_back);
	}
	
	with(light){
		radius = radius_; 
		base_radius = radius;
		image_blend = color_;
	}
	return light;
}