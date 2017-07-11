///@description Leafs part 3
l3 = false;

//Spawn the leaves
switch c{
    case 0:
    case 2:
    case 4:
        pat = "w";
        instance_create_layer(x + 32, y + 32, "IF",obj_CH_leaf);
        instance_create_layer(x - 32, y + 32, "IF",obj_CH_leaf);
        instance_create_layer(x - 48, y, "IF",obj_CH_leaf);
        instance_create_layer(x + 48, y, "IF",obj_CH_leaf);
        instance_create_layer(x + 40, y + 16, "IF",obj_CH_leaf);
        instance_create_layer(x - 40, y + 16, "IF",obj_CH_leaf);
        instance_create_layer(x + 16, y + 40, "IF",obj_CH_leaf);
        instance_create_layer(x - 16, y + 40, "IF",obj_CH_leaf);
        instance_create_layer(x, y + 48, "IF",obj_CH_leaf);     
    break;
    
    case 1:
    case 3:
    case 5:
        pat = "c";
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);  
    break;
    case 6:
    case 7:
    case 8:
        pat = "c";
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        instance_create_layer(x, y, "IF",obj_CH_leaf);
        pat = "w";
        instance_create_layer(x + 32, y + 32, "IF",obj_CH_leaf);
        instance_create_layer(x - 32, y + 32, "IF",obj_CH_leaf);
        instance_create_layer(x - 48, y, "IF",obj_CH_leaf);
        instance_create_layer(x + 48, y, "IF",obj_CH_leaf);
        instance_create_layer(x + 40, y + 16, "IF",obj_CH_leaf);
        instance_create_layer(x - 40, y + 16, "IF",obj_CH_leaf);
        instance_create_layer(x + 16, y + 40, "IF",obj_CH_leaf);
        instance_create_layer(x - 16, y + 40, "IF",obj_CH_leaf);
        instance_create_layer(x, y + 48, "IF",obj_CH_leaf);
    case 9:
        leaves = 4;
        c = 0;
        alarm[4] = 2 * room_speed;
    break;
}

c += 1;