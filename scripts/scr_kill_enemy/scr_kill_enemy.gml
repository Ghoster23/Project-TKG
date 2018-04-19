{
scr_drops();
var pos = ds_list_find_index(global.act_enemy_list,id);
				
ds_list_delete(global.act_enemy_list,pos);
global.kld_enemies += 1;
instance_destroy();
}