{

//show_debug_message(string(mouse_x)+","+string(mouse_y))

if point_in_rectangle(mouse_x, mouse_y, x, y, x+39, y+16){
    menuSelected =1
    }
else if point_in_rectangle(mouse_x, mouse_y, x+71, y, x+133, y+16){
    menuSelected =2
    }
else if point_in_rectangle(mouse_x, mouse_y, x+160, y, x+207, y+16){
    menuSelected =3
    }
else if point_in_rectangle(mouse_x, mouse_y, x+231, y, x+305, y+16){
    menuSelected =4
    }
else if point_in_rectangle(mouse_x, mouse_y, x+328, y, x+372, y+16){
    menuSelected =5
    }
else if point_in_rectangle(mouse_x, mouse_y, x+400, y, x+430, y+16){
    menuSelected =6
    }
else{menuSelected =0}
}

