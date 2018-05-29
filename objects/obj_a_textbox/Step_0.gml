if ds_grid_get(global.dialg_grid, 0,i)=="answer"{
	npc_name = ds_grid_get(global.dialg_grid, 1,i);
	
	answer=instance_create_layer(x,y+offset,layer,obj_answer);
	answer.tag=ds_grid_get(global.dialg_grid, 3,i);
	
	text=ds_grid_get(global.dialg_grid, 2,i);
	answer.text=text;
	answer.stringHeight=string_height(text);
	answer.text_height = string_height_ext(text,stringHeight,boxWidth);
	
	offset += answer.text_height + 10;
	
	i+=1;
}
else if visible==false{
	visible=true;
}
