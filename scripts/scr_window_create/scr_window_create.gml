///@argument window
{
var obji = argument0;

if(is_descended(obji,obj_window_parent)){
	var wnd  = instance_create_layer( x + 64, y + 64, "PS", obji);

	with wnd {
		scr_window_register_w_parent(other.id);
		scr_window_register_w_drawer();
	}

	return wnd;
}

return noone;
}