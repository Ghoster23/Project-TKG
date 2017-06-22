depth = -y;

if(go == true){
switch(pattern){
    case "f":
        hspd = lengthdir_x(4,s_x);
        vspd = lengthdir_y(4,s_x);
    break;
    case "a":
        if(once == false){
            alarm[0] = 5 * room_speed;
            once = true;
        }
        
        if distance_to_point(p_x,p_y) > 10{
            i_dir = point_direction(x,y,p_x,p_y);
        }else {
            i_dir = irandom(360);
        }
        
        hspd = lengthdir_x(6,i_dir);
        vspd = lengthdir_y(6,i_dir);
    break;
    case "c":
        i_dir = irandom_range(180,360);
        
        hspd = lengthdir_x(6,i_dir);
        vspd = lengthdir_y(6,i_dir);
    break;
    case "w":
        
        hspd = lengthdir_x(6,tree_dir);
        vspd = lengthdir_y(6,tree_dir);
    break;
}

if(des == true)
    if(place_meeting(x,y,object121)){
        instance_destroy();
    }
}

//Move
phy_position_x += hspd;
phy_position_y += vspd;

//Damage the player
if(place_meeting(x,y,obj_body) and global.invuln == false){
    global.p_hp -= 1;
    instance_destroy();
}

