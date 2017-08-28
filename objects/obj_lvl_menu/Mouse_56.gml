{
    switch(menuSelected) {
    case 1: // File
        if !instance_exists(obj_lvl_submenu){
            instance_create_layer(x,y+16,"IF",obj_lvl_submenu)
            obj_lvl_submenu.menuPage=6
            global.frozen=true
            }
        break;
    case 2: // Terrain
        if !instance_exists(obj_lvl_submenu){
            instance_create_layer(x+71,y+16,"IF",obj_lvl_submenu)
            obj_lvl_submenu.menuPage=1
            global.frozen=true
            }
        break;
    case 3: // Enemies
        if !instance_exists(obj_lvl_submenu){
            instance_create_layer(x+160,y+16,"IF",obj_lvl_submenu)
            obj_lvl_submenu.menuPage=2
            global.frozen=true
            }
        break;
    case 4: // Cosmetic
        if !instance_exists(obj_lvl_submenu){
            instance_create_layer(x+231,y+16,"IF",obj_lvl_submenu)
            obj_lvl_submenu.menuPage=3
            global.frozen=true
            }
        break;
    
	case 5: // Traps
        if !instance_exists(obj_lvl_submenu){
            instance_create_layer(x+328,y+16,"IF",obj_lvl_submenu)
            obj_lvl_submenu.menuPage=4
            global.frozen=true
            }
        break;
		
	case 6: // Misc
        if !instance_exists(obj_lvl_submenu){
            instance_create_layer(x+400,y+16,"IF",obj_lvl_submenu)
            obj_lvl_submenu.menuPage=5
            global.frozen=true
            }
        break;
    }
}
   