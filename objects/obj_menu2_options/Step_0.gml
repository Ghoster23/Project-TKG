if global.menu2_state =0{
    //português
    if global.language = 1{
        image_index=1;
    }
    //english
    else if global.language = 2{
        image_index=2;
    }
}
else if global.menu2_state =1||2||3 {
   instance_destroy();
}

