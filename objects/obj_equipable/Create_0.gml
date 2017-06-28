event_inherited();
global.select = irandom(1);
image_speed = 0;
ox = x;
oy = y;
t = 0;
inc = 4;
amp = 7;

if(global.select == 0 && global.selectc_0 == false){
    image_index = 0;
    global.selectc_0 = true;
}
else if(global.select == 1 && global.selectc_1 == false){
    image_index = 1;
    global.selectc_1 = true;
}
else if(global.select == 2 && global.selectc_2 == false){
    image_index = 2;
    global.selectc_2 = true;
}
else if(global.select == 3 && global.selectc_3 == false){
    image_index = 3;
    global.selectc_3 = true;
}
else if(global.select == 4 && global.selectc_4 == false){
    image_index = 4;
    global.selectc_4 = true;
}
else if(global.select == 5 && global.selectc_5 == false){
    image_index = 5;
    global.selectc_5 = true;
}
    
    

