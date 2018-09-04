{
var num = argument0;

var parameters = params[num];

//Shoot		
var xx  = x + lengthdir_x(30,angle);
var yy  = y + lengthdir_y(30,angle);
var rad = degtorad(angle);

for(var i = 0; i < parameters[3]; i++){
	var pr = scr_create_damage_dealer(xx,yy,parameters[2],
										owner, owner.ohko,
										owner.stat[mult] * (1 + owner.modf[mult]),
										divi);

	pr.spd = parameters[0];
	pr.dir = -rad + random_range(-parameters[1],parameters[1]);
}
		
image_index = 0;
		
alarm[num] = cds[num] * room_speed;
executing  = -1;

if(amount > 0 and player_owned){
	amount--;
}

params[num] = parameters;
}