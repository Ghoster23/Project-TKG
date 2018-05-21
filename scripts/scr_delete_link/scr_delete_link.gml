linkslist = argument0;
if(ds_list_size(linkslist)>=0){

	//create rope uniting first link and parent
	var linktorem = ds_list_find_value(linkslist,ds_list_size(linkslist)-1);
	with linktorem{
		instance_destroy();
	}
	ds_list_delete(linkslist,ds_list_size(linkslist)-1);

	var nlink = ds_list_find_value(linkslist,ds_list_size(linkslist)-1);

	if(is_undefined(nlink)==false){
		if(instance_exists(nlink)){
			physics_joint_rope_create(nlink,self,nlink.x+2,nlink.y,x,y,0,false);
		}
	}
}
else{
	ds_list_destroy(linkslist);
}


