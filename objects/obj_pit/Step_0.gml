/// @description Insert description here
// You can write your code in this editor
if not once and not global.gen {
	var count = 0;
	nUp = place_meeting(x,y-1,obj_pit);
	nDown = place_meeting(x,y+1,obj_pit);
	nRight = place_meeting(x+1,y,obj_pit);
	nLeft = place_meeting(x-1,y,obj_pit);

	if(nUp) count += 1;
	if(nRight) count += 2;
	if(nDown) count += 4;
	if(nLeft) count += 8;
	image_index = count;
	once = true;
}