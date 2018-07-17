/// @description Insert description here
// You can write your code in this editor
if(flash == false){
	phy_speed_x=0;
	phy_speed_y=0;
	dir=point_direction(x,y,global.body.x,global.body.y)+180;
	flash=true;
	alarm[2]=room_speed*0.06;

}
