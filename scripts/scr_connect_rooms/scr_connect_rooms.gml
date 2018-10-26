{
var gx = argument0;
var gy = argument1;

var ds = argument2;

var right = ds[0];
var up    = ds[1];
var left  = ds[2];
var down  = ds[3];

if up {
	if(instance_exists(fillin[1]) and fillin[1].object_index != obj_vcorridor){
		instance_destroy(fillin[1]);
		instance_destroy(adj[1].fillin[3]);
		fillin[1] = instance_create_layer(gx+(global.roomwd/2)-48,(gy-64),"Instances",obj_vcorridor);
		adj[1].fillin[3] = fillin[1];
		instance_create_layer(gx+(global.roomwd/2)-48,(gy-64),"IF",obj_vcorridorB);
	}
}
					
if left {
	if(instance_exists(fillin[2]) and fillin[2].object_index != obj_hcorridor){
		instance_destroy(fillin[2]);
		instance_destroy(adj[2].fillin[0]);
		fillin[2] = instance_create_layer(gx-32,gy+(global.roomhg/2)-96,"Instances",obj_hcorridor);
		adj[2].fillin[0] = fillin[2];
		instance_create_layer(gx-32,gy+(global.roomhg/2)+32,"IF",obj_hcorridorB);
	}
} 
					
if down {
	if(instance_exists(fillin[3]) and fillin[3].object_index != obj_vcorridor){
		instance_destroy(fillin[3]);
		instance_destroy(adj[3].fillin[1]);
		fillin[3] = instance_create_layer(gx+(global.roomwd/2)-48,(gy+global.roomhg-64),"Instances",obj_vcorridor);
		adj[3].fillin[1] = fillin[3];
		instance_create_layer(gx+(global.roomwd/2)-48,(gy+global.roomhg-64),"IF",obj_vcorridorB);
	}
}
					
if right {
	if(instance_exists(fillin[0]) and fillin[0].object_index != obj_hcorridor){
		instance_destroy(fillin[0]);
		instance_destroy(adj[0].fillin[2]);
		fillin[0] = instance_create_layer((gx+global.roomwd-32),(gy+(global.roomhg/2)-96),"Instances",obj_hcorridor);
		adj[0].fillin[2] = fillin[0];
		instance_create_layer((gx+global.roomwd-32),(gy+(global.roomhg/2)+32),"IF",obj_hcorridorB);
	}
}
}