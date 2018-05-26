for (var i = 0; i < image_number; i++) 
{
    draw_sprite_ext(sprite_index, i, x, y - i*0.7, image_xscale*0.7, image_yscale*0.7, global.map_angle, c_white, image_alpha);
}

