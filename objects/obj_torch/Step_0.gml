if not flicker and lit{
	part_emitter_stream(global.ps_if,em,global.pt_fire,1);
}


if flicker == true{
	randomize();
	r = random_range(0,2);
	flicker = false;
	alarm[0] = 2 * r * room_speed;
}