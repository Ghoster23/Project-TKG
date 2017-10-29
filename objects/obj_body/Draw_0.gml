event_inherited();

surface_set_target(global.lighting);
gpu_set_blendmode(bm_subtract);
draw_set_colour(c_white);
draw_set_alpha(1);

with obj_body{
	if obj_sword.swing == "right_" or obj_sword.swing == "left_" {
		var r = random_range(0.95,1);
		draw_sprite_ext(spr_circle,0,x,y-8,1*r,1*r,0,0,1);
	}
}

gpu_set_blendmode(bm_normal);
surface_reset_target();