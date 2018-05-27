/// @description Insert description here
// You can write your code in this editor
if(calculate == true){
	calculate = false;
	
	pairs = ds_list_clear(pairs);
	fire = noone;
	//while we still have unpaired fires and mages
	while(ds_exists(fires,ds_type_list) and ds_exists(mages,ds_type_list)){
		if(fire!=ds_list_find_value(fires,0))
		fire = ds_list_find_value(fires,0);
		
		//find closest mage in the room (first in list of priority) to whom we have no yet proposed to
		for(var i=0; i< ds_list_size(mages); i++){
			mage = ds_list_find_value(mages,i);
			
			if((i==0 or point_distance(fire.x,fire.y,mage.x,mage.y) < mindist)){
				var mindist = point_distance(fire.x,fire.y,mage.x,mage.y);  
				var minid = i; 
			}	
		}
		mage = ds_list_find_value(mages,minid);
		
		//find out if mage is occupied
		available = false;
		for(j=0; i< ds_list_size(pairs); j++){
			pair = ds_list_find_value(pairs,j);
			
			if(pair[1] == mage){
				available = true;
				break; 
			}	
		}
		
		//if that mage isnt occupied pair him up
		if(available==true){
			pair[0] = fire;
			pair[1] = mage;
			ds_list_add(pairs,pair);
			ds_list_delete(fires,0);
		}
		
		//if that mage is already paired tho
		else {
			//check if their fire is farther than this fire and change if so
			if(point_distance(fire.x,fire.y,pair[0].x,pair[0].y) > mindist){
				ds_list_delete(pairs,j);
				pair[0] = fire;
				pair[1] = mage;
				ds_list_add(pairs,pair);
				ds_list_delete(fires,0);
			}
		}
	}
}