impact = true;
image_speed = 0;

event_inherited();

i = irandom(100);

if i <= 20{
	image_index = 4;
}else
if i <= 50{
	image_index = 3;
}else
if i <= 90{
	image_index = 2;
}else
if i <= 100{
	image_index = 1;
}