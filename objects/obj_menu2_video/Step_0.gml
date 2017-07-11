with (other) {
if global.menu2_state =0 {
    //português
    if global.language = 1{
        image_index=1;
        if point_in_rectangle(mouse_x,mouse_y,283,135,357,152) or  obj_menu2_state0.selected==1{
            image_alpha=1;
        } else image_alpha =0.6;
    }
    //english
    else if global.language = 2{
        image_index=2;
        if point_in_rectangle(mouse_x,mouse_y,283,135,357,152) or obj_menu2_state0.selected==1{
        image_alpha=1;
        } else image_alpha=0.6;
    }
}
else if global.menu2_state==1 {
   instance_destroy();
   instance_create_layer(0,0,layer,obj_menu2_state1);
}
else if global.menu2_state ==2||3 {
   instance_destroy();
}


}
