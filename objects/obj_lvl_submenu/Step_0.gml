{

menuSelected =0
for (i=1;i<=menuText[menuPage,0];i+=1){
    if point_in_rectangle(mouse_x, mouse_y, x, y+(i*16)-16, x+100, y+(i*16)){
        menuSelected =i
        }
    }   
}

