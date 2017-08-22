if point_in_rectangle(mouse_x,mouse_y,484,295,514,325){
	text=scr_chsl_abilities(1);
	visbl=true;
}
else if point_in_rectangle(mouse_x,mouse_y,529,295,558,325){
	text=scr_chsl_abilities(2);
	visbl=true;
}
else if point_in_rectangle(mouse_x,mouse_y,574,295,602,325){
	text=scr_chsl_abilities(3);
	visbl=true;
}
else if point_in_circle(mouse_x,mouse_y,413,263,5){
	text="health";
	visbl=true;
}
else if point_in_circle(mouse_x,mouse_y,451,282,5){
	text="attack";
	visbl=true;
}
else if point_in_circle(mouse_x,mouse_y,452,326,5){
	text="defense";
	visbl=true;
}
else if point_in_circle(mouse_x,mouse_y,414,346,5){
	text="speed";
	visbl=true;

}
else if point_in_circle(mouse_x,mouse_y,376,328,5){
	text="special defense";
	visbl=true;

}
else if point_in_circle(mouse_x,mouse_y,376,282,5){
	text="special attack";
	visbl=true;

}
else{
	visbl=false;
}