///@description Leafs part 1
l1 = false;

//Spawn the leaves
switch a{
    case 0:
    case 2:
    case 4:
    case 6:
    case 8:
    case 10:
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
    case 7:
    case 9:
    case 11:
        pat = "a";
        instance_create_layer(x + 32, y + 32, "IF",obj_CH_leaf);
        instance_create_layer(x - 32, y + 32, "IF",obj_CH_leaf);
        
        instance_create_layer(x + 40, y + 16, "IF",obj_CH_leaf);
        instance_create_layer(x - 40, y + 16, "IF",obj_CH_leaf);
        
        instance_create_layer(x, y + 48, "IF",obj_CH_leaf);
    break;
    
    case 12:
        leaves = 2;
        a = 0;
    break;
}

a += 1;

