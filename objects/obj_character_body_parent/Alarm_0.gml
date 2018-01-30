/// @description Dash done
//Become visible
visible = true;

//Make the head visible
if(instance_exists(head)){
	head.visible    = true;
}

//Make weapon reappear
instance_create_layer(x,y,layer,global.weapon);

//Destroy roll
with(roll){
    instance_destroy();
}

//Determine state
state = scr_move_state;

//Remove invincibility
global.p_inv   = false;

//Start dash cooldown
global.dash_cd =  true;