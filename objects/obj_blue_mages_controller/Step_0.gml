/// @manage all them fires and mages
if(check_fires_all_on == true){
	check_fires_all_on = false;
	var lightemup = true;
	
	for(var i=0; i< ds_list_size(fires); i++){
		
		fire = ds_list_find_value(fires,i)
		if(fire.on!=true){
			lightemup = false;
		}
	}
	if(lightemup ==true){
		for(var i=0; i< ds_list_size(mages); i++){
			mage = ds_list_find_value(mages,i)
			mage.state="mage2ghost";
		}
	}
}


if(check_fires_all_off == true){
	check_fires_all_off = false;
	var lightemdown = true;
	
	for(var i=0; i< ds_list_size(fires); i++){
		
		fire = ds_list_find_value(fires,i)
		if(fire.on==true){
			lightemdown= false;
		}
	}
	if(lightemdown ==true){
		for(var i=0; i< ds_list_size(mages); i++){
			mage = ds_list_find_value(mages,i)
			mage.state="ghost2mage";
		}
	}
}


if(calculate == true){

	calculate = false;
	mage = noone;
	fire = noone;
	
	litfires = ds_list_create();
	for(var i=0; i< ds_list_size(fires);i++){
		fire = ds_list_find_value(fires,i);
		if(fire.on==false){
			ds_list_add(litfires,fire);
		}
	}

	//lets fill the preference list of all things
	
	//first the mages
	for(var i=0; i< ds_list_size(mages); i++){
		
		mage = ds_list_find_value(mages,i)
		
		mage.single = true;
		mage.pair   = noone;
				
		tempfires = ds_list_create();
		ds_list_copy(tempfires,litfires);
		ds_list_clear(mage.preference);
		
		while(ds_list_size(tempfires)>0){
			//closest fire in tempfires
			for(var j=0; j< ds_list_size(tempfires); j++){
				
				fire = ds_list_find_value(tempfires,j);
				
				if((j==0 or point_distance(fire.x,fire.y,mage.x,mage.y) < mindist)){
					
					var mindist = point_distance(fire.x,fire.y,mage.x,mage.y);  
					var minid = j; 
				}	
			}
			
			//add fire to preference list of this mage and remove from temp
			fire = ds_list_find_value(tempfires,minid);
			ds_list_add(mage.preference,fire);
			ds_list_delete(tempfires,minid);
		}
		
		ds_list_destroy(tempfires);
	}
	//then the fires
	for(var i=0; i< ds_list_size(litfires); i++){
		
		fire = ds_list_find_value(litfires,i)
		fire.single = true;
		
		tempmages = ds_list_create();
		ds_list_copy(tempmages,mages);
		
		ds_list_clear(fire.preference);
		
		while(ds_list_size(tempmages)>0){
			//closest fire in tempfires
			for(var j=0; j< ds_list_size(tempmages); j++){
			
				mage = ds_list_find_value(tempmages,j);
				
				if((j==0 or point_distance(fire.x,fire.y,mage.x,mage.y) < mindist)){
					
					var mindist = point_distance(fire.x,fire.y,mage.x,mage.y);  
					var minid = j; 
				}	
			}
			
			//add fire to preference list of this mage and remove from temp
			mage = ds_list_find_value(tempmages,minid);
			ds_list_add(fire.preference,mage);
			ds_list_delete(tempmages,minid);
		}
		
		ds_list_destroy(tempmages);
	}
	//while we still have unpaired fires and mages
	
	singlefires = ds_list_create();
	ds_list_copy(singlefires,litfires);

	
	while(ds_list_size(singlefires) > ds_list_size(litfires)-ds_list_size(mages)){
		//this is our young strapping single fire lookin for love 
		fire = ds_list_find_value(singlefires,0);
		if(is_undefined(fire)){
			
			for(var i=0; i< ds_list_size(mages); i++){
		
				mage = ds_list_find_value(mages,i)
		
				if(mage.pair == noone){
						
					var testpair = ds_list_find_value(litfires,0);
					if(!is_undefined(testpair)){
						mage.single = false;
						mage.pair = testpair;
					}	
				}
			}
	
			ds_list_destroy(singlefires);
			ds_list_destroy(litfires);
			exit;
		}
		//show_debug_message("fire -> "+string(fire));
		
		//find closest mage in the room (first in list of priority) to whom we have no yet proposed to
		for(var i=0; i<ds_list_size(fire.preference) and fire.single==true; i++){
			
			mage = ds_list_find_value(fire.preference,i);
			//show_debug_message("     mage -> "+string(mage));
			
			//find out if mage is occupied
			if(mage.single == true){
				//show_debug_message("     single? -> true");
				//if that mage isnt occupied pair him up
				mage.single = false;
				fire.single = false;
				show_debug_message("mage: "+string(mage) + "pair: "+string(fire));
				mage.pair   = fire;
			
				ds_list_delete(singlefires,ds_list_find_index(singlefires,fire));
			}
			
			//if that mage is already paired tho
			else{
				//show_debug_message("     single? -> false");
				var otherfire = mage.pair;
				
				//check if this is a better pair
				if(ds_list_find_index(mage.preference,fire) < ds_list_find_index(mage.preference,otherfire)){
					//show_debug_message("     better pair than -> "+ string(otherfire));
					otherfire.single = true;
					
					ds_list_add(singlefires,otherfire);
					fire.single      = false;
					show_debug_message("mage: "+string(mage) + "pair: "+string(fire));
					mage.pair        = fire;
					ds_list_delete(singlefires,ds_list_find_index(singlefires,fire));
				}
			}
		}		
	}
	ds_list_destroy(singlefires);
	ds_list_destroy(litfires);
	
	
}


