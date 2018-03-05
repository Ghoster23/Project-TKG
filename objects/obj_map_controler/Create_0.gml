global.map_angle=0;
ds_menumapgrid = ds_grid_create(2,1);

rot_speed=0.2;
selected=0
ds_places=ds_list_create();
ds_list_add(ds_places,obj_capital,obj_hydra,obj_lighthouse,obj_windmill,obj_jungle,obj_tree,obj_birds,obj_coleseum,obj_mountains)
highltd=ds_list_find_value(ds_places,selected);

global.hasranonce = false;