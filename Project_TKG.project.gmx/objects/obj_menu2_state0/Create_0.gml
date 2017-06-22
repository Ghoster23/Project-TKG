global.byebyeswords = false;
global.menu2_state=0;
selected=0
posx1=mouse_x
posy1=mouse_y

if global.menu2_state= 0 {
    instance_create(0,0,obj_menu2_audio);
    instance_create(0,0,obj_menu2_video);
    instance_create(0,0,obj_menu2_controls);
    instance_create(0,0,obj_menu2_options);
    if instance_exists(obj_menu2_back) = false {
        instance_create(0,0,obj_menu2_back);
    }
    if instance_exists(obj_menu2_swords) = false {
        instance_create(0,0,obj_menu2_swords);
    }
}


