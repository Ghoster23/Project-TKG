randomize();

if attempts >= 75 {
	attempts = 0;
	comp = 0;
	room_goto(rm_level);
}

if once == false && roomgenerated >= roomstogenerate {
	
	once = true;
	
	instance_create_layer(0,0,"IF",obj_AI_controller);
	comp += 7;
	
	instance_create_layer(0,0,"BH",obj_floor_fluid_controller);
	comp += 7;
	instance_create_layer(0,0,"IF",obj_potion_controller);
	comp += 8;
	global.gen = false;
	instance_destroy();
}

//Gen the map
if roomgenerated < roomstogenerate and attempts < 75 {
			
	confirm = false  //Will we build?
    
	up = false       //Is there a room up?
	u = 0;			 //What type of room is up?
	down = false     //Is there a room down?
	d = 0;			 //What type of room is down?
	left = false     //Is there a room to the left?
	l = 0;			 //What type of room is left?
	right = false    //Is there a room to the right?
	r = 0;			 //What type of room is right?
	
	ad = 0;          //Number of adjacent rooms
    
	//Determine grid coordinates
	col = irandom(7);
	row = irandom(7);
	room_ = row * 8 + col;
    
	//Can we build there?
	if global.ds_roomgrid[# 1, room_] == "NULL"{
    
	    //Is there an adjoining room? How many?
	    if row != 0{
			u = global.ds_roomgrid[# 1, (row - 1) * 8 + col];
			
	        if not ((u > 0 and u < 4) or (u > 5 and u < 9) or u == 11) and u != "NULL"{
	            up = true;
				
				ad++;
	        }
	    }
	    if row != 7{
			d = global.ds_roomgrid[# 1, (row + 1) * 8 + col];
			
	        if not (d < 2 or (d > 2 and d < 6) or d == 8 or d == 13) and d != "NULL"{
	            down = true;
				
				ad++;
	        }
	    }
	    if col != 0{
			l = global.ds_roomgrid[# 1, row * 8 + col - 1];
			
	        if not (l < 3 or (l > 4 and l < 7) or (l > 8 and l < 11)) and l != "NULL"{
	            left = true;
				
				ad++;
	        }
	    }
	    if col != 7{
			r = global.ds_roomgrid[# 1, row * 8 + col +1];
			
	        if not (r == 0 or (r > 1 and r < 5) or r == 7 or r == 9 or r == 12) and r != "NULL"{
	            right = true;
				
				ad++;
	        }
	    }
		
	    ///If there is, determine type
	    if ad {
			attempts++;
			
	    //Decide room type
			//Special rooms
	        if roomgenerated == 12 {
				//Make a store
				typeroom = 15
				confirm = true;
				global.rm_store_id = room_;
					
			}else if roomgenerated == 13 and ad == 1 and
					((up and u < 15) or (down and d < 15) or (left and l < 15) or (right and r < 15)){
				typeroom = 16;
				confirm = true;
				global.rm_item_id = room_;
				
			}else if roomgenerated == 14 and ad >= 1 and
					((up and u < 15) or (down and d < 15) or (left and l < 15) or (right and r < 15)){
				typeroom = 17;
				confirm = true;
				global.rm_sp_id = room_;
			
			//Boss room
			}else if roomgenerated == 15 and ad == 1 and
					((up and u < 15) or (down and d < 15) or (left and l < 15) or (right and r < 15)){
				typeroom = 18;
				confirm = true;
				global.rm_boss_id = room_;
				
			//Normal rooms
	        }else if roomgenerated < 12{
	            while confirm == false {
					typeroom = irandom(14);
					
					switch typeroom {
						case 0:
							if down and not (up or right or left){
								confirm = true;
							}
							
						break;
						case 1:
							if left and not (up or right or down){
								confirm = true;
							}
							
						break;
						case 2:
							if up and not (left or right or down){
								confirm = true;
							}
							
						break;
						case 3:
							if right and not (up or left or down){
								confirm = true;
							}
							
						break;
						case 4:
							if (down or right) and not (up or left){
								confirm = true;
							}
							
						break;
						case 5:
							if (down or left) and not (up or right){
								confirm = true;
							}
							
						break;
						case 6:
							if (up or left) and not (right or down){
								confirm = true;
							}
							
						break;
						case 7:
							if (up or right) and not (left or down){
								confirm = true;
							}
							
						break;
						case 8:
							if (left or right) and not (up or down){
								confirm = true;
							}
							
						break;
						case 9:
							if (up or down) and not (right or left){
								confirm = true;
							}
							
						break;
						case 10:
							if (up or down or left) and not right{
								confirm = true;
							}
							
						break;
						case 11:
							if (up or right or left) and not down{
								confirm = true;
							}
							
						break;
						case 12:
							if (up or down or right) and not left{
								confirm = true;
							}
							
						break;
						case 13:
							if (down or right or left) and not up{
								confirm = true;
							}
							
						break;
						case 14:
							confirm = true;
							
						break;
					}
	            } 
	        }
            
			if confirm {
				attempts = 0;
				
		        //Gen the room
		        roomgenerated += 1;
            
		        ///Place the gen cursor
		        gx = global.roomwd * col;
		        gy = global.roomhg * row;
            
		        ///Register the room
				global.ds_roomgrid[# 1, room_] = typeroom;
				
				scr_roomgn(typeroom);
				comp+=4;
            
		        ///Doors for normal rooms
				if typeroom < 20{
			        if up {
			            if(!instance_position((gx+(global.roomwd/2)),(gy-32),obj_vcorridor)){
							instance_destroy(instance_nearest(gx+(global.roomwd/2),(gy-2),obj_wall_down_fillin));
							instance_destroy(instance_nearest(gx+(global.roomwd/2),(gy+2),obj_wall_up_fillin));
			                instance_create_layer(gx+(global.roomwd/2)-48,(gy-64),"PS",obj_vcorridor);
							
							global.ds_roomgrid[# 3, room_ - 8] = grid_array_set_value(global.ds_roomgrid[# 3, room_ - 8],2,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],0,1);
			            }
			        }
					
			        if left {
			            if(!instance_position(gx,(gy+(global.roomwd/2)),obj_hcorridor)){
							instance_destroy(instance_nearest(gx+2,gy+(global.roomwd/2),obj_wall_left_fillin));
							instance_destroy(instance_nearest(gx-2,gy+(global.roomwd/2),obj_wall_right_fillin));
			                instance_create_layer(gx-32,gy+(global.roomhg/2)-96,"Instances",obj_hcorridor);
							instance_create_layer(gx-32,gy+(global.roomhg/2)+32,"PS",obj_hcorridorB);
							
							global.ds_roomgrid[# 3, room_ - 1] = grid_array_set_value(global.ds_roomgrid[# 3, room_ - 1],3,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],1,1);
			            }
			        } 
					
			        if down {
			            if(!instance_position(gx+(global.roomwd/2),(gy+global.roomhg-32),obj_vcorridor)){
							instance_destroy(instance_nearest(gx+(global.roomwd/2),gy+global.roomhg-2,obj_wall_down_fillin));
							instance_destroy(instance_nearest(gx+(global.roomwd/2),gy+global.roomhg+2,obj_wall_up_fillin));
			                instance_create_layer(gx+(global.roomwd/2)-48,(gy+global.roomhg-64),"PS",obj_vcorridor);
							
							global.ds_roomgrid[# 3, room_ + 8] = grid_array_set_value(global.ds_roomgrid[# 3, room_ + 8],0,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],2,1);
			            }
			        }
					
			        if right {
			            if(!instance_position(gx+global.roomwd,(gy+(global.roomhg/2)),obj_hcorridor)){
							instance_destroy(instance_nearest(gx+global.roomwd-2,gy+(global.roomhg/2),obj_wall_right_fillin));
							instance_destroy(instance_nearest(gx+global.roomwd+2,gy+(global.roomhg/2),obj_wall_left_fillin));
			                instance_create_layer((gx+global.roomwd-32),(gy+(global.roomhg/2)-96),"Instances",obj_hcorridor);
							instance_create_layer((gx+global.roomwd-32),(gy+(global.roomhg/2)+32),"PS",obj_hcorridorB);
							
							global.ds_roomgrid[# 3, room_ + 1] = grid_array_set_value(global.ds_roomgrid[# 3, room_ + 1],1,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],3,1);
			            }
			        }
					
				}else {
					
					if up and (u < 15){
				        if(!instance_position((gx+(global.roomwd/2)),(gy-32),obj_door_d)){
				            instance_create_layer(gx+(global.roomwd/2),(gy-32),"Instances",obj_door_d);
				            instance_create_layer(gx+(global.roomwd/2),gy+((32*1.5)+11),"Instances",obj_door_u);
							
							global.ds_roomgrid[# 3, room_ - 8] = grid_array_set_value(global.ds_roomgrid[# 3, room_ - 8],2,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],0,1);
				        }
				    }else 
				    if left and (l < 15){
				        if(!instance_position((gx-33),(gy+(global.roomwd/2)),obj_door_l)){
				            instance_create_layer(gx-34,gy+(global.roomhg/2),"Instances",obj_door_l);
				            instance_create_layer(gx+33,gy+(global.roomhg/2),"Instances",obj_door_r);
							
							global.ds_roomgrid[# 3, room_ - 1] = grid_array_set_value(global.ds_roomgrid[# 3, room_ - 1],3,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],1,1);
				        }
				    }else
				    if down and (d < 15){
				        if(!instance_position(gx+(global.roomwd/2),(gy+global.roomhg-32),obj_door_d)){
				            instance_create_layer(gx+(global.roomwd/2),(gy+global.roomhg-32),"Instances",obj_door_d);
				            instance_create_layer(gx+(global.roomwd/2),gy+global.roomhg+((32*1.5)+11),"Instances",obj_door_u);
							
							global.ds_roomgrid[# 3, room_ + 8] = grid_array_set_value(global.ds_roomgrid[# 3, room_ + 8],0,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],2,1);
				        }
				    }else
				    if right and (r < 15){
				        if(!instance_position((gx+global.roomwd+16),(gy+(global.roomhg/2)),obj_door_r)){
				            instance_create_layer((gx+global.roomwd-34),(gy+(global.roomhg/2)),"Instances",obj_door_l);
				            instance_create_layer((gx+global.roomwd+33),(gy+(global.roomhg/2)),"Instances",obj_door_r);
							
							global.ds_roomgrid[# 3, room_ + 1] = grid_array_set_value(global.ds_roomgrid[# 3, room_ + 1],1,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],3,1);
							
				        }
				    }
				}
			} 
	    }
	}
}