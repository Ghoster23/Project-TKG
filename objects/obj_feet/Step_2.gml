/// @description Insert description here
// You can write your code in this editor
x = global.body.phy_position_x;
y = global.body.phy_position_y;

part_emitter_region(global.ps,global.feet_em,x + global.body.hspd * 2,x + global.body.hspd * 2,y + 10 + global.body.vspd * 2,y + 10 + global.body.vspd * 2,pt_shape_circle,ps_distr_linear);

if(not global.pause){
	for(var i = 0; i < 3; i++){
		if(global.equiped[i] == 7){
			var tile = instance_place(x,y,obj_fluid_tile);
			
			if(tile != noone){
				with(tile){
					active = true;
				}
			}	
			break;
		}
	}
}