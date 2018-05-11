randomize();

value = 89;
on    = true;

n = irandom_range(1,3);

for(var i = 0; i < n; i++){
	var dir = irandom(360);
	var xx  = lengthdir_x(12,dir);
	var yy  = lengthdir_y(8,dir)
	
	var drop = instance_create_layer(x+xx,y+yy,layer,obj_blood_droplet);
	
	if(irandom(1)){
		var spr = spr_circle_4b;
	}else {
		var spr = spr_elipse_8b;
	}
	
	drop.sprite_index = spr;
}

alarm[0] = 0.5*room_speed;