///@description Make the enemy move randomly when idle
///@param Distance
///@param Timer
dis = argument0;
time = argument1;

if state_change == true{
    ini_point_x = x;
    ini_point_y = y;
                
    state_change = false;
}

if distance_to_point(ini_point_x,ini_point_y) <= dis{
	if dir_change == true{
        alarm[3] = time;
        dir_change = false;
		i_dir = irandom(360); 
        
    }
	
	scr_move_entity(i_dir,1);		
				
}else{
    scr_move_entity(point_direction(x,y,ini_point_x,ini_point_y),1);
                
}