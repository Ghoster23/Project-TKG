global.map_angle=0;
ds_menumapgrid = ds_grid_create(2,1);

rot_speed=0.2;
selected=0
ds_places=ds_list_create();
ds_list_add(ds_places,obj_littlehouses,obj_coleseum,obj_hydra,obj_tree,obj_mountains,obj_windmill,obj_birds,obj_moderncity,obj_jungle,obj_lighthouse,obj_capital,obj_scholarplace);
highltd=ds_list_find_value(ds_places,selected);
rotationspeed=2;


global.hasranonce = false;

outline_init();