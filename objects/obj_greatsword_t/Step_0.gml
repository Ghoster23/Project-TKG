/// @description Insert description here
// You can write your code in this editor
if(once == false){
	once = true;
	lenchain = (num_links*180/30);
}

if((point_distance(x,y,owner.x,owner.y)>lenchain or phy_speed<10) and stop == false){
	
	stop = true;
	alarm_set(0,0.1*room_speed);
	parent = instance_nearest(x,y,obj_testweight);
	flip = true;
	
	//rope that conects end to parent
	main_rope = physics_joint_rope_create(parent,self,parent.x,parent.y,self.x-2,self.y,lenchain,false);
	
	linkslist = scr_create_chain(parent);
	
	alarm_set(1,pullback_time);
	
}

if(point_distance(x,y,owner.x,owner.y)<=25 and pullback==true){
	instance_destroy();
}

phy_rotation = -point_direction(global.body.x,global.body.y,x,y);
x = phy_position_x;
y = phy_position_y;
