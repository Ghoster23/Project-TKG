if fade=="in"{
	image_alpha-=0.02;
	if (image_alpha==0){
		fade="stop";
	}
}

else if (fade=="out" and room==rm_menu_1){
	image_alpha+=0.02;
	if (image_alpha==1){
		fade="stop";
	}
}
else if fade=="out"{
	image_alpha+=0.02;
	if (image_alpha==1){
		fade="stop";
	}
}



