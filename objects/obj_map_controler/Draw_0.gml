//draw_path(path_boat2, path_boat1.x, path_boat1.y, true);
//draw_path(path_boat1, path_boat1.x, path_boat1.y, true);

if ds_exists(ds_menumapgrid, ds_type_grid) {
    var mapgrid = ds_menumapgrid;
    var instNum = instance_number(obj_menumap_parent);

    if instNum != 0{
        ds_grid_resize(mapgrid, 2, instNum);
   }

   var yy = 0;

   with obj_menumap_parent {
        mapgrid[# 0, yy] = id;
        
        //input the y value
        
        mapgrid[# 1, yy] = y_comp;
        yy += 1;
   }

    ds_grid_sort(ds_menumapgrid, 1, true);
    yy = 0;

   repeat(instNum){
      var instanceID = ds_menumapgrid[# 0, yy];

      with(instanceID){
        if instanceID.visible == true{
            
			if(self.object_index == obj_map_controler.highltd){
				//draw_outline
				for (var i = 0; i < image_number; i++){
					outline_start(1,c_white,sprite_index,i,4);
					draw_sprite_ext(sprite_index, i, x, y - i, image_xscale, image_yscale, global.map_angle+angle_off, c_white, image_alpha);
					outline_end();
				
				}
			}
            for (var i = 0; i < image_number; i++){
				draw_sprite_ext(sprite_index, i, x, y - i, image_xscale, image_yscale, global.map_angle+angle_off, c_white, image_alpha);
            }
        
         }
      }
        yy += 1;
   }

   ds_grid_clear(ds_menumapgrid, 0);
}

