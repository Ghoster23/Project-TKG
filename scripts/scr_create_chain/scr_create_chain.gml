parent = argument0;

//create rope uniting first link and parent
linkslist = ds_list_create();

prevlink = instance_create_layer(x,y,"IF",obj_chainlink1);
prevlink.image_index = 0;

ds_list_add(linkslist,prevlink);

physics_joint_rope_create(parent,prevlink,parent.x,parent.y,prevlink.x-2,prevlink.y,0,false);

for(var i=0; i<num_links; i++){
	link = instance_create_layer(x,y,"IF",obj_chainlink1);
	link.owner = self;
	
	if(flip == true){
		
		flip = false;
		link.image_index = 1;
		physics_joint_revolute_create(prevlink,link,link.x+2,link.y,0,0,false,0,0,false,true);
		
		prevlink = link;
		physics_joint_rope_create(parent,prevlink,parent.x,parent.y,prevlink.x+2,prevlink.y,(i+1)*6,false);
		physics_joint_rope_create(self,prevlink,x,y,prevlink.x-2,prevlink.y,(num_links-i+1)*6,false);
	}
	
	else{
		
		flip = true;
		link.image_index = 0;
		physics_joint_revolute_create(prevlink,link,link.x-2,link.y,0,0,false,0,0,false,true);
		
		prevlink = link;
		physics_joint_rope_create(parent,prevlink,parent.x,parent.y,prevlink.x-2,prevlink.y,(i+1)*6 ,false);
		physics_joint_rope_create(self,prevlink,x,y,prevlink.x+2,prevlink.y,(num_links-i+1)*6,false);
	}
	
	ds_list_add(linkslist,prevlink);
}
	
//conect sword to last link
if(flip == true){
	physics_joint_rope_create(link,self,link.x+2,link.y,x,y,0,false);
}
else{
	physics_joint_rope_create(link,self,link.x-2,link.y,x,y,0,false);
}


return linkslist;