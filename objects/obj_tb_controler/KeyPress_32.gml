/// @description parse text from .csv file to ds_grid


if ds_exists(global.dialg_grid,ds_type_grid){
	ds_grid_destroy(global.dialg_grid);
}

file = file_text_open_read(working_directory + "\dialogtest.csv");
lines=0;
while(!file_text_eoln(file)){
	lines+=1;
	file_text_readln(file);
}

file_text_close(file); 

global.dialg_grid = ds_grid_create(4,lines);

dialg_file = file_text_open_read(working_directory + "\dialogtest.csv");
var j=0, i=0, index, count;


while(!file_text_eof(dialg_file)){
	
	//lines follow the format:   id - name - text - tag
	//example:                  "line","Bob","Hi!","0" 
	
	//go through the 4 column of the grid
	line=file_text_read_string(dialg_file);
	index=1;
	count=0;
	
	for(i=0;i<4;i++){
	
		//if its the last entry (aka the tag) just copy the rest of the line
		if(i==3){
			content=string_copy(line,index,string_length(line)-(index-1));
		}
		
		//if its the 3rd field (aka the text) and its between ""
		else if ((i==2) and string_char_at(line,index)==chr(34)) {
			index+=1;
			while(string_char_at(line,index)!=chr(34)){
				index++;
				count++;
			}	
			content=string_copy(line,index-count,count);
			index+=2;
			count=0;
		}
		
		//normal behaviour expecting commas to separate fields
		else{
			while(string_char_at(line,index)!=chr(44)){
				index++;
				count++;
			}	
			content=string_copy(line,index-count,count);
			index+=1;
			count=0;
		}
		
		//add content to grid	
		ds_grid_add(global.dialg_grid,i,j,content);
		show_debug_message(content);
	}
	
	//next line
	j++;
	file_text_readln(dialg_file);
}


//begin the dialog chain!!!!!

text_box=instance_create_layer(x,y,"IF",obj_textbox);


//close the file his job is done :3
file_text_close(dialg_file);