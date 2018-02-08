/// @description Insert description here
// You can write your code in this editor
scr_get_input();

if distance_to_object(global.body) < 24 {
	if interact_key and cost <= global.coins{
		global.coins -= cost;
		
		switch sprite_index{
			case spr_heart:
				global.hp += image_index;
				
				if global.hp > global.maxhp {
					global.hp = global.maxhp;
				}
				
				instance_destroy();
				
			break;
			case spr_potion_flask:
				if global.potion[1] == c_white {
					global.potion[0] = image_index;
					global.potion[1] = color;
		
					
		
				}else {
					var l = image_index;
					var c = color;
		
					image_index = global.potion[0];
					color = global.potion[1];
		
					global.potion[0] = l;
					global.potion[1] = c;
		
				}
				
				instance_destroy();
				obj_gui.n_potion = true;
			break;
		}
    
	}
}