/// @description Inicialize the enemy
event_inherited();
image_speed = 0;

//Stats
stat[stats.mhp]  =	5;
stat[stats.hp]   =	5;
stat[stats.atk]  =  5;
stat[stats.def]  =  5;
stat[stats.satk] =  5;
stat[stats.sdef] =  5;
stat[stats.spd]  =  3;

prev_hp = stat[stats.hp];

//sprites
mage_right_follow = spr_mage_walk_right;
mage_up_follow    = spr_mage_walk_up;
mage_down_follow  = spr_mage_walk_down;
mage_stand_still  = spr_mage_still;
ghost_follow      = spr_mage_ghost;
transformation    = spr_mage_transform;

sprs = [mage_right_follow,mage_up_follow,mage_down_follow];

///Enemy unique
//Has moved
state = "ghostfollow";

//mages controller
current_column = (x div global.roomwd);
current_row    = (y div global.roomhg); 

var dgx = current_column*global.roomwd;
var dgy = current_row*global.roomhg;
		
mages_controller = collision_rectangle(dgx,dgy,dgx+global.roomwd,dgy+global.roomhg,obj_blue_mages_controller,false,true);
			
if(mages_controller == noone){
	mages_controller = instance_create_layer(x,y,layer,obj_blue_mages_controller);
}
//add mage to the list
ds_list_add(mages_controller.mages,id);
mages_controller.calculate = true;

//preference list
preference = ds_list_create();
single = true;
pair = noone;

//times 
lightingtime = 0.6*room_speed;
attackpausetime = 0.7*room_speed;

scr_pausable_init(10);
