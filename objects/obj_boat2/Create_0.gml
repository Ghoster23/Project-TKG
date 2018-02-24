<<<<<<< HEAD
upH    = shader_get_uniform(sh_outline,"pH");
upW    = shader_get_uniform(sh_outline,"pW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_width(sprite_get_texture(sprite_index,0));

image_speed=0;

angle_off=-60;

len = point_distance(320,180,x,y);
dir = point_direction(320,180,x,y);

y_comp = y;

x=320+lengthdir_x(len,dir-angle_off);
y=180+lengthdir_y(len,dir-angle_off);

xoff = 320-x;
yoff = 180-y;

sprite_set_offset(sprite_index,xoff,yoff)
x=320;
y=180;
=======
image_speed=0;
angle_off=0;
pt_pos=0;
pt_rt=0;
path_start(path_boat2, 0.5, path_action_stop, true);
>>>>>>> origin/update
