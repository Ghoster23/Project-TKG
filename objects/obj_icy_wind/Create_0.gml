//Projectile initialization
offs = 1;
event_inherited();

life_time = 1.2 * room_speed;
fall_rate = 0;

piercing = true;

with(shadow){
	sprite_index       = spr_icy_wind_converter;
	
	phy_linear_damping = other.phy_linear_damping;
	phy_fixed_rotation = true;
	
	phy_position_x = other.phy_position_x - sprite_width/2;
	phy_position_y = other.phy_position_y - sprite_height/2;

	scr_fluid_converter_init(119,[0,3,2,3],false,true,false);
}

image_alpha = 0.5;
		  
em = part_emitter_create(global.ps_if);