{
if menuSelected==0{
    global.frozen=false
    instance_destroy()
    }
if menuPage==2{
    for(i=1;i<=menuSelected;i+=1;){
        if menuSelected==i{
            show_debug_message(string(global.selected_block))
            global.selected_block[0]=2
            global.selected_block[1]=i
            global.frozen=false
            instance_destroy()
            }
        }
    }
else if menuPage==1{
    for(i=1;i<=menuSelected;i+=1;){
        if menuSelected==i{
            global.selected_block[0]=1
            global.selected_block[1]=i
            global.frozen=false
            instance_destroy()
            }
        }
    }
else if menuPage==3{
    for(i=1;i<=menuSelected;i+=1;){
        if menuSelected==i{
            global.selected_block[0]=3
            global.selected_block[1]=i
            global.frozen=false
            instance_destroy()
            }
        }
    }
else if menuPage==4{
    for(i=1;i<=menuSelected;i+=1;){
        if menuSelected==i{
            global.selected_block[0]=4
            global.selected_block[1]=i
            global.frozen=false
            instance_destroy()
            }
        }
    }
else if menuPage==5{
    for(i=1;i<=menuSelected;i+=1;){
        if menuSelected==i{
            show_debug_message("Level "+string(i));
            global.frozen=false;
            instance_destroy();
            }
        }
    }

}

