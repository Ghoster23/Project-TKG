randomize();

//2D Array for room existence
l[4,4] = true;

//Gen the map
while roomgenerated != roomstogenerate{
	confirm = false
    
	up = false
	down = false
	left = false
	right = false
    
	c = irandom(7);
	r = irandom(7);
    
	L = l[r,c];
    
	//Can we build there?
	if L == false{
    
	    //Is there an adjoining room?
	    if r != 0{
	        L = l[r-1,c];
	        if L == true{
	            up = true;
	        }
	    }
	    if r != 7{
	        L = l[r+1,c];
	        if L == true{
	            down = true;
	        }
	    }
	    if c != 0{
	        L = l[r,c-1];
	        if L == true{
	            left = true;
	        }
	    }
	    if c != 7{
	        L = l[r,c+1];
	        if L == true{
	            right = true;
	        }
	    }
        
	    ///If so, generate
	    if up == true or down == true or left == true or right == true {
            
	        //Decide room type
	        if roomgenerated == (roomstogenerate - 1) and broomc == 0{
	            typeroom = 50;
				
	        } else{
	            while confirm == false{
                
	                typeroom = irandom(19);
                
	                ///Room type probs   
	                if(typeroom <= 5 && roomtpac != roomtpa){
	                    roomtpac ++;
	                    confirm = true;
	                } else if(typeroom >= 6 && typeroom < 10 && roomstc != roomst){
	                    roomstc ++;
	                    confirm = true;
	                } else if(typeroom > 9 && typeroom <= 15 && roomtpbc != roomtpb){
	                    roomtpbc ++;
	                    confirm = true;
	                } else if(typeroom == 16 && roomequipc != roomequip){
	                    roomequipc ++;
	                    confirm = true;
	                } else if(typeroom > 16 && typeroom <= 20 && roomspc != roomsp){
	                    roomspc ++;
	                    confirm = true;    
	                } else{
	                    confirm = false;
	                }   
	            } 
	        }
            
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
			var room_ = r * 8 + c;
			global.ds_roomgrid[# 1, room_] = scr_roomgn(typeroom);
            
	        ///Doors
	        if up{
	            if(!instance_position((gx+(global.roomwd/2)),(gy-32),obj_door_d)){
	                instance_create_layer(gx+(global.roomwd/2),(gy-32),"Instances",obj_door_d);
	                instance_create_layer(gx+(global.roomwd/2),gy+((32*1.5)+11),"Instances",obj_door_u); 
	            }
	        } 
	        if left{
	            if(!instance_position((gx-33),(gy+(global.roomwd/2)),obj_door_l)){
	                instance_create_layer(gx-34,gy+(global.roomhg/2),"Instances",obj_door_l);
	                instance_create_layer(gx+33,gy+(global.roomhg/2),"Instances",obj_door_r);
	            }
	        } 
	        if down{
	            if(!instance_position(gx+(global.roomwd/2),(gy+global.roomhg-32),obj_door_d)){
	                instance_create_layer(gx+(global.roomwd/2),(gy+global.roomhg-32),"Instances",obj_door_d);
	                instance_create_layer(gx+(global.roomwd/2),gy+global.roomhg+((32*1.5)+11),"Instances",obj_door_u); 
	            }
	        } 
	        if right{
	            if(!instance_position((gx+global.roomwd+16),(gy+(global.roomhg/2)),obj_door_r)){
	                instance_create_layer((gx+global.roomwd-34),(gy+(global.roomhg/2)),"Instances",obj_door_l);
	                instance_create_layer((gx+global.roomwd+33),(gy+(global.roomhg/2)),"Instances",obj_door_r); 
	            }
	        } 
            
	        ///Can't build there no more
	        l[r,c] = true;
            
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

