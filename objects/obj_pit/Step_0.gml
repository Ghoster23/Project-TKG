/// @description Insert description here
// You can write your code in this editor
if not once and not global.gen {
	//Up
	if instance_position(x+16,y-16,obj_pit) {
		u = 1;
		ad++;
	}
	//Rigth
	if instance_position(x+48,y+16,obj_pit) {
		r = 1;
		ad++;
	}
	//Down
	if instance_position(x+16,y+48,obj_pit) {
		d = 1;
		ad++;
	}
	//Left
	if instance_position(x-16,y+16,obj_pit) {
		l = 1;
		ad++
	}
	//Up Left
	if instance_position(x-16,y-16,obj_pit) {
		ad++
		u_l = true;
	}
	//Up Rigth
	if instance_position(x+48,y-16,obj_pit) {
		ad++
		u_r = true;
	}
	//Down Right
	if instance_position(x+48,y+48,obj_pit) {
		ad++
		d_r = true;
	}
	//Down Left
	if instance_position(x-16,y+48,obj_pit) {
		ad++
		d_l = true;
	}
	
	///Determine sprite
	if ad > 5 {
		if ad >= 6 and not (u and r and l and d){
			if not u{
				image_index = 13;
			}
			if not r{
				image_index = 14;
			}
			if not l{
				image_index = 11;
			}
			if not d{
				image_index = 7;
			}
		}
		if not u_l{
			if not u{
				image_index = 13;
			}
			if not l{
				image_index = 11;
			}
		
			image_index = 18;
		}
		if not u_r{
			if not u{
				image_index = 13;
			}
			if not r{
				image_index = 14;
			}
			image_index = 19;
		}
		if not d_l{
			if not d{
				image_index = 7;
			}
			if not l{
				image_index = 11;
			}
			image_index = 17;
		}
		if not d_r{
			if not d{
				image_index = 7;
			}
			if not r{
				image_index = 14;
			}
			image_index = 16;
		}
		
		if ad == 8 {
			image_index = 16;
			
		}
		
	}else {
		image_index = (8 * d) + (4 * l) + (2 * u) + r;
		
		if image_index == 3 and not u_r {
			image_index = 21;
		}
		
		if image_index == 6 and not u_l {
			image_index = 22;
		}
		
		if image_index == 9 and not d_r {
			image_index = 23;
		}
		
		if image_index == 12 and not d_l {
			image_index = 24;
		}
		
		
	}
	
	once = true;
}