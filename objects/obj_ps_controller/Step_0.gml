//Draw the surface
if surface_exists(global.lighting) and (room != rm_menu_1 and room != rm_menu_2 and room != rm_chsl and room != rm_dead){
    surface_set_target(global.lighting);
    
    //Make it dark
    draw_set_colour(c_black);
    draw_set_alpha(0.2);
    draw_rectangle(0,0,room_width,room_height,0);
    
    //Light sources
    
    ///Torch
    gpu_set_blendmode(bm_subtract);
    draw_set_colour(c_white);
    draw_set_alpha(0.3);
    
    with obj_torch{
        if lit == true{
            var a = round(sin(o));
            
            draw_sprite(spr_torch_light,dir,x+16,y+16+r);
            draw_sprite(spr_torch_light_s,dir,x+16,y+16+r);
        }
    }
    
    ///Skull Bullet
    gpu_set_blendmode(bm_subtract);
    draw_set_colour(c_red);
    
    if instance_exists(obj_skull_fl){
        with (obj_skull_fl) {
        
            draw_circle(x+hspd,y+vspd,16+r,false);
            draw_circle(x+hspd,y+vspd,26+r,false);
        }
    }
    
    //Resets
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
    surface_reset_target();
    
}else if room != rm_menu_1 and room != rm_menu_2 and room != rm_chsl and room != rm_dead{
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

//Surface
if surface_exists(global.lighting){
    surface_free(global.lighting);
}

view_enabled = false;
}

