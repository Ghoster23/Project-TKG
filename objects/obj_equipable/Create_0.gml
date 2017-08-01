event_inherited();
select = irandom(1);
image_speed = 0;
ox = x;
oy = y;
t = 0;
inc = 4;
amp = 7;

if(select == 0 && global.equipable[0] == false){
    image_index = 0;
    global.equipable[0] = true;
}
else if(select == 1 && global.equipable[1] == false){
    image_index = 1;
    global.equipable[1] = true;
}
else if(select == 2 && global.equipable[2] == false){
    image_index = 2;
    global.equipable[2] = true;
}
else if(select == 3 && global.equipable[3] == false){
    image_index = 3;
    global.equipable[3] = true;
}
else if(select == 4 && global.equipable[4] == false){
    image_index = 4;
    global.equipable[4] = true;
}
else if(select == 5 && global.equipable[5] == false){
    image_index = 5;
    global.equipable[5] = true;
}
    
    

