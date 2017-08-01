///@description Die
//Temporary cadaver
sprite_index = spr_mimic_d;
solid = false;
			
//Permanent cadaver
var rot = phy_rotation;
            
with instance_create_layer(x,y,"Instances",obj_cadaver){
    sprite_index = spr_mimic_d;
    phy_rotation = rot;
}

scr_drops();

instance_destroy();