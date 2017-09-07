/// @description Insert description here
// You can write your code in this editor
if not global.pause and state == 0{
	with other {
		instance_destroy();
	}

	state = 1;
}