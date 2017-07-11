state = 0;
alarm[0] = 15 * room_speed;

if instance_exists(obj_CH_mroots){
	with obj_CH_mroots {
		instance_destroy();
	}
}