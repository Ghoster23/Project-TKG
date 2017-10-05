state="up_key";
vis=true;
alarm[1]=0.6*room_speed;

m = display_get_gui_width() / global.roomwd;
c = surface_get_width(application_surface)/2;
c1= (c*10/18);
c2 = c +(c/18);
ic1=c-(2*c/18)
ic2=c+(8*c/18)
off = 96;
sep=28;
image_speed=0.5;

listen_for_key=false;

//controlls
controls_width = string_width_ext("Controls Options",2,200)*m;
controls_height = string_height_ext("Controls Options",2,200)*m; 
controls_x1 = c-((controls_width)/2);
controls_y1 = (off) * m;
controls_x2 = controls_x1 + controls_width;
controls_y2 = controls_y1+ controls_height;

//up_key
up_key_width = string_width_ext("Up key",2,200)*m;
up_key_height = string_height_ext("Up key",2,200)*m; 
up_key_x1 = c1;
up_key_y1 = (off+sep) * m;
up_key_x2 = up_key_x1 + up_key_width;
up_key_y2 = up_key_y1+ up_key_height;

//left_key
left_key_width = string_width_ext("Left key",2,200)*m;
left_key_height = string_height_ext("Left key",2,200)*m; 
left_key_x1 = c1;
left_key_y1 = (off+sep*2) * m;
left_key_x2 = left_key_x1 + left_key_width;
left_key_y2 = left_key_y1+ left_key_height;

//down_key
down_key_width = string_width_ext("Down key",2,200)*m;
down_key_height = string_height_ext("Down key",2,200)*m; 
down_key_x1 = c1;
down_key_y1 = (off+sep*3) * m;
down_key_x2 = down_key_x1 + down_key_width;
down_key_y2 = down_key_y1+ down_key_height;

//right_key
right_key_width = string_width_ext("Right key",2,200)*m;
right_key_height = string_height_ext("Right key",2,200)*m; 
right_key_x1 = c1;
right_key_y1 = (off+sep*4) * m;
right_key_x2 = right_key_x1 + right_key_width;
right_key_y2 = right_key_y1+ right_key_height;

//attack_key
attack_key_width = string_width_ext("Ability 1",2,200)*m;
attack_key_height = string_height_ext("Ability 1",2,200)*m; 
attack_key_x1 = c1;
attack_key_y1 = (off+sep*5) * m;
attack_key_x2 = attack_key_x1 + attack_key_width;
attack_key_y2 = attack_key_y1+ attack_key_height;

//mouse_r_key
mouse_r_width = string_width_ext("Ability 2",2,200)*m;
mouse_r_height = string_height_ext("Ability 2",2,200)*m; 
mouse_r_x1 = c1;
mouse_r_y1 = (off+sep*6) * m
mouse_r_x2 = mouse_r_x1 + mouse_r_width;
mouse_r_y2 = mouse_r_y1+ mouse_r_height;

//dash_key
dash_key_width = string_width_ext("Ability 3",2,200)*m;
dash_key_height = string_height_ext("Ability 3",2,200)*m; 
dash_key_x1 = c1;
dash_key_y1 = (off+sep*7) * m
dash_key_x2 = dash_key_x1 + dash_key_width;
dash_key_y2 = dash_key_y1+ dash_key_height;

//--------------------------//RIGHT//--------------------------//

//interact_key
interact_key_width = string_width_ext("Interact key",2,200)*m;
interact_key_height = string_height_ext("Interact key",2,200)*m; 
interact_key_x1 = c2;
interact_key_y1 = (off+sep) * m
interact_key_x2 = interact_key_x1 + interact_key_width;
interact_key_y2 = interact_key_y1+ interact_key_height;

//potion_key
potion_key_width = string_width_ext("Use Item",2,200)*m;
potion_key_height = string_height_ext("Use Item",2,200)*m; 
potion_key_x1 = c2;
potion_key_y1 = (off+sep*2) * m
potion_key_x2 = potion_key_x1 + potion_key_width;
potion_key_y2 = potion_key_y1+ potion_key_height;

//mmap_key
mmap_key_width = string_width_ext("Map key",2,200)*m;
mmap_key_height = string_height_ext("Map key",2,200)*m; 
mmap_key_x1 = c2;
mmap_key_y1 = (off+sep*3) * m
mmap_key_x2 = mmap_key_x1 + mmap_key_width;
mmap_key_y2 = mmap_key_y1+ mmap_key_height;

//os_mmap_key
os_mmap_key_width = string_width_ext("Minimap",2,200)*m;
os_mmap_key_height = string_height_ext("Minimap",2,200)*m; 
os_mmap_key_x1 = c2;
os_mmap_key_y1 = (off+sep*4) * m
os_mmap_key_x2 = os_mmap_key_x1 + os_mmap_key_width;
os_mmap_key_y2 = os_mmap_key_y1+ os_mmap_key_height;

//enter_key
enter_key_width = string_width_ext("Select",2,200)*m;
enter_key_height = string_height_ext("Select",2,200)*m; 
enter_key_x1 = c2;
enter_key_y1 = (off+sep*5) * m
enter_key_x2 = enter_key_x1 + enter_key_width;
enter_key_y2 = enter_key_y1+ enter_key_height;

//menu_key
menu_key_width = string_width_ext("Menu/Back",2,200)*m;
menu_key_height = string_height_ext("Menu/Back",2,200)*m; 
menu_key_x1 = c2;
menu_key_y1 = (off+sep*6) * m
menu_key_x2 = menu_key_x1 + menu_key_width;
menu_key_y2 = menu_key_y1+ menu_key_height;

//reset
reset_width = string_width_ext("Reset Controls",2,200)*m;
reset_height = string_height_ext("Reset Controls",2,200)*m; 
reset_x1 = c2;
reset_y1 = (off+sep*7) * m
reset_x2 =reset_x1 + reset_width;
reset_y2 = reset_y1+ reset_height;
