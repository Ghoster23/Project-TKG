impact = true;
image_speed = 0;

event_inherited();

i = irandom(100);

if 0 <= i <= 9{
	image_index = 4;
}
if 10 <= i <= 29{
	image_index = 3;
}
if 30 <= i <= 59{
	image_index = 2;
}
if 60 <= i <= 99{
	image_index = 1;
}