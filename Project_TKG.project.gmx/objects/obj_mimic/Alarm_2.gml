state = 3;

sprite_index = spr_mimic_d;
        density = 0;
        solid = false;
        instance_create(x,y,obj_cadaver);
            
            with instance_nearest(x,y,obj_cadaver){
                sprite_index = spr_mimic_d;
                phy_rotation = self.phy_rotation;
                }

