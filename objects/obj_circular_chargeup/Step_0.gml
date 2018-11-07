if(segment == 0){
	segment = time/8;
}

if(0 < counter && image_index < 8){
	var i = image_index;
	
	while(counter > segment * i){
		i++
	}
	
	image_index = i;
}

if(counter >= time){
	prog = 1;
	
	if(alarm[0] == -1){
		alarm[0] = 0.2 * room_speed;
	}
	
}else {
	counter += chargeinc;
	prog = counter/time;
}