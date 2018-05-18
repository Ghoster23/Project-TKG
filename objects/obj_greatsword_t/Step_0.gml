/// @description Insert description here
// You can write your code in this editor
if(point_distance(x,y,owner.x,owner.y)>lenchain and stop == false){
	stop = true;	
	phy_speed_x=0;
	phy_speed_y=0;
	
	
	parent = instance_nearest(x,y,obj_testweight);
	flip = true;
	
	//rope that conects end to parent
	main_rope = physics_joint_rope_create(parent,self,parent.x,parent.y,self.x-2,self.y,lenchain,false);
	
	//create rope uniting first link and parent
	prevlink = instance_create_layer(x,y,layer,obj_chainlink1);
	prevlink.image_index = 0;
	
	physics_joint_rope_create(parent,prevlink,parent.x,parent.y,prevlink.x-2,prevlink.y,0,false);

	for(var i=0; i<num_links; i++){
		link = instance_create_layer(x,y,layer,obj_chainlink1);
		link.owner = self;
	
		if(flip == true){
			flip = false;
			link.image_index = 1;
			physics_joint_revolute_create(prevlink,link,link.x+2,link.y,0,0,false,0,0,false,true);
			
			prevlink = link;
			physics_joint_rope_create(parent,prevlink,parent.x,parent.y,prevlink.x+2,prevlink.y,(i+1)*6,false);
			physics_joint_rope_create(self,prevlink,x,y,prevlink.x-2,prevlink.y,(num_links-i+1)*6,false);
		}else{
			flip = true;
			link.image_index = 0;
			physics_joint_revolute_create(prevlink,link,link.x-2,link.y,0,0,false,0,0,false,true);
			
			prevlink = link;
			physics_joint_rope_create(parent,prevlink,parent.x,parent.y,prevlink.x-2,prevlink.y,(i+1)*6 ,false);
			physics_joint_rope_create(self,prevlink,x,y,prevlink.x+2,prevlink.y,(num_links-i+1)*6,false);
		}
	}
	
	//conect sword to last link
	if(flip == true){
		physics_joint_rope_create(link,self,link.x+2,link.y,x,y,0,false);
	}else{
		physics_joint_rope_create(link,self,link.x-2,link.y,x,y,0,false);
	}
}

if(stop == true and testdist > 0){
	if(testdist - 0.5 > 0){
		testdist  -= 0.5;
	}
	else{
		testdist  = 0;
	}
	physics_joint_set_value(main_rope,phy_joint_max_length,testdist);
}

if(point_distance(x,y,owner.x,owner.y)<=18){
	instance_destroy();
}

phy_angular_velocity += 50; 