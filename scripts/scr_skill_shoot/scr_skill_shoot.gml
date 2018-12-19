///parameters - [ projectile speed, angle deviation range, projectile, projectile count]
{
var num = argument0;

var parameters = params[num];

//Shoot		
var xx  = x + lengthdir_x(skill_dist,angle) + offx;
var yy  = y + lengthdir_y(skill_dist,angle) + offy;
var rad = degtorad(angle);

for(var i = 0; i < parameters[3]; i++){
	var range = degtorad(parameters[1]);
	
	var pr = scr_create_projectile( xx, yy, parameters[2],
										owner, owner.ohko,
										parameters[0], -rad + random_range(-range,range),
										owner.stat[mult] * (1 + owner.modf[mult]), divi);
}
		
image_index = 0;

if(player_owned and amount > 0){
	amount--;
}

alarm[num] = cds[num] * room_speed;
executing  = -1;

params[num] = parameters;
}