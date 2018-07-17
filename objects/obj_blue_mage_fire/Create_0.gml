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

no_shadows = true;

front_light = scr_create_light(x+16,y+16,true,40,make_color_hsv(150,255,200));
back_light = scr_create_light(x+16,y+16,false,65,make_color_hsv(130,255,150));
