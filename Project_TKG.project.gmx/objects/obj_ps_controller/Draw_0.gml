//Draw the surface
if surface_exists(global.lighting) and (room != rm_menu_1 and room != rm_menu_2 and room != rm_chsl) {
    if view_current == 0{
        draw_surface(global.lighting,0,0);
    }
    
}else if room != rm_menu_1 and room != rm_menu_2 and room != rm_chsl{
    global.lighting = surface_create(room_width, room_height);
    
}

