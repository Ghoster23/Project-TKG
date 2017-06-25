l3 = false;

//Spawn the leaves
switch c{
    case 0:
    case 2:
    case 4:
        pat = "w";
        instance_create(x + 32, y + 32, obj_CH_leaf);
        instance_create(x - 32, y + 32, obj_CH_leaf);
        instance_create(x - 48, y, obj_CH_leaf);
        instance_create(x + 48, y, obj_CH_leaf);
        instance_create(x + 40, y + 16, obj_CH_leaf);
        instance_create(x - 40, y + 16, obj_CH_leaf);
        instance_create(x + 16, y + 40, obj_CH_leaf);
        instance_create(x - 16, y + 40, obj_CH_leaf);
        instance_create(x, y + 48, obj_CH_leaf);     
    break;
    
    case 1:
    case 3:
    case 5:
        pat = "c";
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);  
    break;
    case 6:
    case 7:
    case 8:
        pat = "c";
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        instance_create(x, y, obj_CH_leaf);
        pat = "w";
        instance_create(x + 32, y + 32, obj_CH_leaf);
        instance_create(x - 32, y + 32, obj_CH_leaf);
        instance_create(x - 48, y, obj_CH_leaf);
        instance_create(x + 48, y, obj_CH_leaf);
        instance_create(x + 40, y + 16, obj_CH_leaf);
        instance_create(x - 40, y + 16, obj_CH_leaf);
        instance_create(x + 16, y + 40, obj_CH_leaf);
        instance_create(x - 16, y + 40, obj_CH_leaf);
        instance_create(x, y + 48, obj_CH_leaf);
    case 9:
        leaves = 4;
        c = 0;
        
    break;
}

c += 1;