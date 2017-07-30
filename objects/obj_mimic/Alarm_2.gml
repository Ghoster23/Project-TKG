///@description Die
//Temporary cadaver
sprite_index = spr_mimic_d;
solid = false;
			
//Permanent cadaver
instance_create_layer(x,y,"Instances",obj_cadaver);
var rot = phy_rotation;
            
with instance_nearest(x,y,obj_cadaver){
    sprite_index = spr_mimic_d;
    phy_rotation = rot;
}

//Spawn a heart		
if((irandom(99) + 1) <= 10){
	instance_create_layer(x,y,obj_bat.layer,obj_heart);
                
}

instance_destroy();