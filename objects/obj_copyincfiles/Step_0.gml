if global.frozen=true{ 
    exit;
}

if point_in_rectangle(mouse_x,mouse_y,x,y,x+105,y+21){
	image_index=1;
	if mouse_check_button_pressed(mb_left){
		show_debug_message("copy");
		image_alpha=0.4;
		
		
		//delete all the files in appdata
		var i = 0;
		repeat(15){
			if file_exists(working_directory + "roomtype"+string(i)+".csv"){
				file_delete(working_directory + "roomtype"+string(i)+".csv")
			}
			i+=1;
		}
		
		//copy all files into working directory
		file_copy("roomtype0.csv","roomtype0.csv");
		file_copy("roomtype1.csv","roomtype1.csv");
		file_copy("roomtype2.csv","roomtype2.csv");
		file_copy("roomtype3.csv","roomtype3.csv");
		file_copy("roomtype4.csv","roomtype4.csv");
		file_copy("roomtype5.csv","roomtype5.csv");
		file_copy("roomtype6.csv","roomtype6.csv");
		file_copy("roomtype7.csv","roomtype7.csv");
		file_copy("roomtype8.csv","roomtype8.csv");
		file_copy("roomtype9.csv","roomtype9.csv");
		file_copy("roomtype10.csv","roomtype10.csv");
		file_copy("roomtype11.csv","roomtype11.csv");
		file_copy("roomtype12.csv","roomtype12.csv");
		file_copy("roomtype13.csv","roomtype13.csv");
		file_copy("roomtype14.csv","roomtype14.csv");
	}
}
else{
	image_alpha=1;
	image_index=0;
}