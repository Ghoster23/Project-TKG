///@description Initializes variables for follower objects
///@param target
///@param x_offset
///@param y_offset
///@param speed
{
follr_targ    = argument0;
follr_x_offs  = argument1;
follr_y_offs  = argument2;
follr_spd     = argument3;

if(instance_exists(follr_targ)){
	follr_phy = object_get_physics(follr_targ);
}
}