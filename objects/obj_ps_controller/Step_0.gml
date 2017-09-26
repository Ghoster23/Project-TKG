//Draw the surface
if surface_exists(global.lighting) and (room != rm_menu_1 and room != rm_chsl and room != rm_dead and room != rm_lvl_editor){
    surface_set_target(global.lighting);
    
    //Make it dark
    draw_set_colour(c_black);
    draw_set_alpha(1);
    draw_rectangle(0,0,room_width,room_height,0);
    
    //Light sources
    
    ///Torch
    gpu_set_blendmode(bm_subtract);
    
    with obj_torch{
        if lit == true{
            var a = sin(o) * 0.01;
            
            draw_sprite_ext(spr_torch_light,0,x+16,y+16,1+a,1+a,0,c_white,1);
            
        }
    }
	
	///Sword bullet
    /*gpu_set_blendmode(bm_subtract);
    draw_set_colour(c_blue);
    
    if instance_exists(obj_sword_projectile){
        with (obj_sword_projectile) {
			
            draw_circle(phy_position_x+hspd,phy_position_y+vspd,32,false);
        }
    }
	
	if instance_exists(obj_stuck_sword){
        with (obj_stuck_sword) {
			
            draw_circle(x,y,32,false);
        }
    }*/
	
	///explosion
	gpu_set_blendmode(bm_subtract);
    draw_set_colour(c_white);
    draw_set_alpha(1);
    
    with obj_explosion{
        if blast == true{
		
            draw_circle(x,y,50,false);
            draw_circle(x,y,50,false);
        }
    }
	
    //Resets
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
    surface_reset_target();
    
}else if room != rm_menu_1 and room != rm_chsl and room != rm_dead{
    global.lighting = surface_create(room_width,room_height);
    
    surface_set_target(global.lighting);
    
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}

if room == rm_dead and once == false{
once = true;

//Particles
part_type_destroy(global.pt_vbits);
part_type_destroy(global.pt_cbits);
part_type_destroy(global.pt_smoke);
part_type_destroy(global.pt_fire);
part_system_destroy(global.ps);
part_system_destroy(global.ps_if);

//Surface
if surface_exists(global.lighting){
    surface_free(global.lighting);
}

view_enabled = false;
}

