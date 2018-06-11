{
if(instance_exists(global.body) and													//Player exists
	point_distance(x+intr_x,y+intr_y,global.body.x,global.body.y) < intr_dist and   //Is within interact radius
	not interacted){																//Hasn't been interacted
	
	if(global.key_active[key_id.interact]){
		interacted  = true;
	}
	
	intr_key_bob += 0.15;
	
	draw_script = scr_draw_interact_prompt;
	
}else {
	draw_script  = prev_draw_script;
	intr_key_bob = 0;
}

}