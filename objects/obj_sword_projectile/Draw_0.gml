draw_self();

surface_set_target(global.lighting);
gpu_set_blendmode(bm_subtract);

draw_sprite_ext(spr_sow_projectile_light,0,phy_position_x,phy_position_y,1.4,1,-phy_rotation,c_white,1);
 
surface_reset_target();
gpu_set_blendmode(bm_normal); 

/*
draw_self();

if surface_exists(global.lighting) {
	surface_set_target(global.lighting);
	gpu_set_blendmode(bm_subtract);
	
	draw_sprite_ext(spr_sword_projectile_impact1,image_index,phy_position_x,phy_position_y,1,1,-phy_rotation,c_white,1);
	
	surface_reset_target();
	gpu_set_blendmode(bm_normal);
}
*/