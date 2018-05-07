flip = true;
phy_fixed_rotation = true;
parent = instance_nearest(x,y,obj_body);

//create rope uniting first link and parent
prevlink = instance_create_layer(x,y,layer,obj_chainlink1);
prevlink.image_index = 0;
physics_joint_revolute_create(parent,prevlink,prevlink.x-5,prevlink.y,0,0,false,0,0,false,true);

for(var i=0; i<6; i++){
	link = instance_create_layer(x,y,layer,obj_chainlink1);
	
	if(flip == true){
		flip = false;
		link.image_index = 1;
		physics_joint_revolute_create(prevlink,link,link.x+5,link.y,0,0,false,0,0,false,true);
	}else{
		flip = true;
		link.image_index = 0;
		physics_joint_revolute_create(prevlink,link,link.x-5,link.y,0,0,false,0,0,false,true);
	}
	prevlink = link;
}
//conect sword to last link
if(flip == true){
	physics_joint_revolute_create(link,self,link.x+5,link.y,0,0,false,0,0,false,true);
}else{
	physics_joint_revolute_create(link,self,link.x-5,link.y,0,0,false,0,0,false,true);
}

