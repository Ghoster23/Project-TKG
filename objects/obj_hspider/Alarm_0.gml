if not go{
	go = true;
	
	//choose state at end of alarm:
	//state 0 = move like a spidy
	//state 1 = hide and throw bombs
	//state 2 = ded
	event_perform(ev_alarm,1);
}else {
	damaged = false;
}