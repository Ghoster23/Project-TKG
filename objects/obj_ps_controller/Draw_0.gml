/// @description Insert description here
// You can write your code in this editor
if surface_exists(global.lighting) and (room != rm_menu_1 and room != rm_char_select) {
    if view_current == 0{
		draw_surface_ext(global.lighting,0,0,1,1,0,c_white,0.2);
        
    }
    
}else if room != rm_menu_1 and room != rm_char_select{
    global.lighting = surface_create(room_width, room_height);
    
}