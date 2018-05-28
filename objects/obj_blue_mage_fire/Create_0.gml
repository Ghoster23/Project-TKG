event_inherited();
image_speed = 0;
phy_fixed_rotation = true;

on = true;


//see if this room has a mage controller and create one if need be

current_column = (x div global.roomwd);
current_row    = (y div global.roomhg); 

var dgx = current_column*global.roomwd;
var dgy = current_row*global.roomhg;
		
mages_controller = collision_rectangle(dgx,dgy,dgx+global.roomwd,dgy+global.roomhg,obj_blue_mages_controller,false,true);
			
if(mages_controller == noone){
	mages_controller = instance_create_layer(x,y,layer,obj_blue_mages_controller);
}
//add fire to list of fires
mages_controller.calculate = true;
ds_list_add(mages_controller.fires,id);

//preference list
preference = ds_list_create();
single = true;

flameoff =0;