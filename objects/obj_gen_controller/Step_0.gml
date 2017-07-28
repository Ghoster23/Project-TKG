randomize();

//2D Array for room existence
l[4,4] = true;

//Gen the map
while roomgenerated < roomstogenerate{
	
	confirm = false  //Will we build?
    
	up = false       //Is there a room up?
	down = false     //Is there a room down?
	left = false     //Is there a room to the left?
	right = false    //Is there a room to the right?
	ad = 0;          //Number of adjacent rooms
    
	//Determine grid coordinates
	c = irandom(7);
	r = irandom(7);
	room_ = r * 8 + c;
    
	//Can we build there?
	L = l[r,c];
    
	if L == false{
    
	    //Is there an adjoining room? How many?
	    if r != 0{
	        L = l[r-1,c];
	        if L == true{
	            up = true;
				ad++;
	        }
	    }
	    if r != 7{
	        L = l[r+1,c];
	        if L == true{
	            down = true;
				ad++;
	        }
	    }
	    if c != 0{
	        L = l[r,c-1];
	        if L == true{
	            left = true;
				ad++;
	        }
	    }
	    if c != 7{
	        L = l[r,c+1];
	        if L == true{
	            right = true;
				ad++;
	        }
	    }
        
	    ///If there is, determine type
	    if up == true or down == true or left == true or right == true {
            
	    //Decide room type
			//Special rooms
	        if roomgenerated >= 12 and roomgenerated < 15{
				//Make a store if there isn't one
	            if roomstc < roomst {
					roomstc++;
					
					typeroom = irandom_range(11,14);
					confirm = true;
					
				}
				
				//If there's only one room adjacent and that room is of type A or B
				if not confirm and ad == 1 and 
					((up and (global.ds_roomgrid[# 1, room_ - 8] == "A" or global.ds_roomgrid[# 1, room_ - 8] == "B"))or
					(down and (global.ds_roomgrid[# 1, room_ + 8] == "A" or global.ds_roomgrid[# 1, room_ + 8] == "B"))or
					(left and (global.ds_roomgrid[# 1, room_ - 1] == "A" or global.ds_roomgrid[# 1, room_ - 1] == "B"))or
					(right and (global.ds_roomgrid[# 1, room_ + 1] == "A" or global.ds_roomgrid[# 1, room_ + 1] == "B"))) {
					
					//Make an item room if there isn't one
					if roomequipc < roomequip {
						roomequipc++;
					
						typeroom = irandom_range(15,16);
						confirm = true;
						
					}
					
					//Make a special room
					if roomspc < roomsp and not confirm{
						roomspc++;
					
						typeroom = irandom_range(17,20);
						confirm = true;
					}
				}
				
			
			//Boss room
			}else if roomgenerated == 15{
				broom++;
				typeroom = 50;
				confirm = true;
				
			//Normal rooms
	        }else {
	            while confirm == false{
                
	                typeroom = irandom(10);
                
	                ///Room type probs   
	                if(typeroom <= 5 && roomtpac != roomtpa){
	                    roomtpac ++;
	                    confirm = true;
	                } else if(typeroom > 6 && typeroom <= 10 && roomtpbc != roomtpb){
	                    roomtpbc ++;
	                    confirm = true;   
	                } else{
	                    confirm = false;
	                }   
	            } 
	        }
            
			if confirm {
		        //Gen the room
		        roomgenerated += 1;
            
		        ///Place the gen cursor
		        gx = global.roomwd * c;
		        gy = global.roomhg * r;
            
		        ///Base Room
		        instance_create_layer(gx+global.roomwd/2+64,gy+48,"Instances",obj_torch);
		        instance_create_layer(gx+global.roomwd/2-96,gy+48,"Instances",obj_torch);
		        instance_create_layer(gx,gy,"Instances",obj_wall_left);
		        instance_create_layer(gx,gy,"Instances",obj_wall_up);
		        instance_create_layer(gx,gy+global.roomhg-32,"Instances",obj_wall_down);
		        instance_create_layer(gx+global.roomwd-32,gy,"Instances",obj_wall_right);
		        instance_create_layer(gx+(global.roomwd/2),gy+(global.roomhg/2)+31,"Floor",obj_floor);
            
		        ///Register the room
				global.ds_roomgrid[# 1, room_] = scr_roomgn(typeroom);
            
		        ///Doors for normal rooms
				if typeroom < 11{
			        if up {
			            if(!instance_position((gx+(global.roomwd/2)),(gy-32),obj_door_d)){
			                instance_create_layer(gx+(global.roomwd/2),(gy-32),"Instances",obj_door_d);
			                instance_create_layer(gx+(global.roomwd/2),gy+((32*1.5)+11),"Instances",obj_door_u);
							
							global.ds_roomgrid[# 3, room_ - 8] = grid_array_set_value(global.ds_roomgrid[# 3, room_ - 8],2,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],0,1);
			            }
			        } 
			        if left {
			            if(!instance_position((gx-33),(gy+(global.roomwd/2)),obj_door_l)){
			                instance_create_layer(gx-34,gy+(global.roomhg/2),"Instances",obj_door_l);
			                instance_create_layer(gx+33,gy+(global.roomhg/2),"Instances",obj_door_r);
							
							global.ds_roomgrid[# 3, room_ - 1] = grid_array_set_value(global.ds_roomgrid[# 3, room_ - 1],3,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],1,1);
			            }
			        } 
			        if down {
			            if(!instance_position(gx+(global.roomwd/2),(gy+global.roomhg-32),obj_door_d)){
			                instance_create_layer(gx+(global.roomwd/2),(gy+global.roomhg-32),"Instances",obj_door_d);
			                instance_create_layer(gx+(global.roomwd/2),gy+global.roomhg+((32*1.5)+11),"Instances",obj_door_u);
							
							global.ds_roomgrid[# 3, room_ + 8] = grid_array_set_value(global.ds_roomgrid[# 3, room_ + 8],0,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],2,1);
			            }
			        } 
			        if right {
			            if(!instance_position((gx+global.roomwd+16),(gy+(global.roomhg/2)),obj_door_r)){
			                instance_create_layer((gx+global.roomwd-34),(gy+(global.roomhg/2)),"Instances",obj_door_l);
			                instance_create_layer((gx+global.roomwd+33),(gy+(global.roomhg/2)),"Instances",obj_door_r);
							
							global.ds_roomgrid[# 3, room_ + 1] = grid_array_set_value(global.ds_roomgrid[# 3, room_ + 1],1,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],3,1);
			            }
			        }
				}else {
					
					if up and (global.ds_roomgrid[# 1, room_ - 8] == "A" or global.ds_roomgrid[# 1, room_ - 8] == "B"){
				        if(!instance_position((gx+(global.roomwd/2)),(gy-32),obj_door_d)){
				            instance_create_layer(gx+(global.roomwd/2),(gy-32),"Instances",obj_door_d);
				            instance_create_layer(gx+(global.roomwd/2),gy+((32*1.5)+11),"Instances",obj_door_u);
							
							global.ds_roomgrid[# 3, room_ - 8] = grid_array_set_value(global.ds_roomgrid[# 3, room_ - 8],2,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],0,1);
				        }
				    }else 
				    if left and (global.ds_roomgrid[# 1, room_ - 1] == "A" or global.ds_roomgrid[# 1, room_ - 1] == "B"){
				        if(!instance_position((gx-33),(gy+(global.roomwd/2)),obj_door_l)){
				            instance_create_layer(gx-34,gy+(global.roomhg/2),"Instances",obj_door_l);
				            instance_create_layer(gx+33,gy+(global.roomhg/2),"Instances",obj_door_r);
							
							global.ds_roomgrid[# 3, room_ - 1] = grid_array_set_value(global.ds_roomgrid[# 3, room_ - 1],3,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],1,1);
				        }
				    }else
				    if down and (global.ds_roomgrid[# 1, room_ + 8] == "A" or global.ds_roomgrid[# 1, room_ + 8] == "B"){
				        if(!instance_position(gx+(global.roomwd/2),(gy+global.roomhg-32),obj_door_d)){
				            instance_create_layer(gx+(global.roomwd/2),(gy+global.roomhg-32),"Instances",obj_door_d);
				            instance_create_layer(gx+(global.roomwd/2),gy+global.roomhg+((32*1.5)+11),"Instances",obj_door_u);
							
							global.ds_roomgrid[# 3, room_ + 8] = grid_array_set_value(global.ds_roomgrid[# 3, room_ + 8],0,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],2,1);
				        }
				    }else
				    if right and (global.ds_roomgrid[# 1, room_ + 1] == "A" or global.ds_roomgrid[# 1, room_ + 1] == "B"){
				        if(!instance_position((gx+global.roomwd+16),(gy+(global.roomhg/2)),obj_door_r)){
				            instance_create_layer((gx+global.roomwd-34),(gy+(global.roomhg/2)),"Instances",obj_door_l);
				            instance_create_layer((gx+global.roomwd+33),(gy+(global.roomhg/2)),"Instances",obj_door_r);
							
							global.ds_roomgrid[# 3, room_ + 1] = grid_array_set_value(global.ds_roomgrid[# 3, room_ + 1],1,1);
							global.ds_roomgrid[# 3, room_] = grid_array_set_value(global.ds_roomgrid[# 3, room_],3,1);
							
				        }
				    }
					
				}
            
		        ///Can't build there no more
		        l[r,c] = true;
			} 
	    }
	}
}

if once == false{
	
	once = true;

	instance_create_layer(0,0,"IF",obj_AI_controller);
	instance_create_layer(0,0,"PS",obj_minimap_controller);
	instance_create_layer(0,0,"BH",obj_floor_fluid_controller);
	instance_destroy();
}

