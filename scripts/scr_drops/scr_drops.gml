///@description Spawn drops
randomize();

if((irandom(99) + 1) <= 10){
	instance_create_layer(x,y,"IF",obj_heart);
              
}else if (irandom(99) + 1) <= 40{
	instance_create_layer(x,y,"IF",obj_coin);
}

ds_list_delete(global.act_enemy_list,ds_list_find_index(global.act_enemy_list,self));
global.n_room = true;
global.kld_enemies += 1;